{
  description = "irwanasikin.my.id Jekyll dev environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        ruby_3_3
        bundler
      ];

      shellHook = ''
        export BUNDLE_PATH=.bundle
        export BUNDLE_BIN=.bundle/bin
        export PATH="$BUNDLE_BIN:$PATH"

        if [ ! -f .bundle/bin/jekyll ]; then
          echo "Installing gems..."
          bundle install
        fi

        echo ""
        echo "Jekyll environment ready!"
        echo "Run: bundle exec jekyll serve --livereload"
        echo ""
      '';
    };
  };
}
