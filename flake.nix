{
  description = "Elrond keypair generator";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/master";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      supportedSystems = [
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-linux"
        "x86_64-darwin"
      ];
    in
    flake-utils.lib.eachSystem supportedSystems (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      rec {
        packages.elrond-keygen = pkgs.callPackage ./default.nix {
          rev = self.rev or "dirty";
        };

        defaultPackage = packages.elrond-keygen;

        devShell = pkgs.mkShell {
          nativeBuildInputs = [
            pkgs.go
            pkgs.gopls
            pkgs.golangci-lint
          ];
        };
      });
}
