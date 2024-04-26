{
  description = "Template Haskell hack to violate module abstractions";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/haskell-updates";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }: let
    pkg-name = "true-name";
    haskell-overlay = hfinal: hprev: {
      ${pkg-name} = hfinal.callCabal2nix pkg-name ./. {};
    };

    overlay = final: prev: {
      haskellPackages = prev.haskellPackages.extend haskell-overlay;
    };
  in {
      overlays = {
        default = overlay;
      };
    } //
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [overlay];
      };

      hspkgs = pkgs.haskellPackages;
    in {
      packages = {
        true-name = hspkgs.${pkg-name};
        default = hspkgs.${pkg-name};
      };

      devShell = hspkgs.shellFor {
        packages = p: [p.${pkg-name}];
        root = ./.;
        withHoogle = true;
        buildInputs = with hspkgs; [
          haskell-language-server
          cabal-install
        ];
      };

      formatter = pkgs.alejandra;
    });
}
