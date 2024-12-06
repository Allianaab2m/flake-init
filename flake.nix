{
  description = "My Flake template(for devShell)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in 
    {
      packages.default = pkgs.mkShell {
        packages = with pkgs; [

        ];
      };
    }
  );
}
