{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages =
         [
            (pkgs.haskellPackages.ghcWithPackages (hpkgs : [
                hpkgs.lens 
                hpkgs.servant 
                hpkgs.servant-server 
                hpkgs.warp
                hpkgs.sdl2]))
            pkgs.cabal-install
            pkgs.haskell-language-server
            pkgs.SDL2
         ];
}
