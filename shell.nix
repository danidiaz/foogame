{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages =
        let haskellPackages = pkgs.haskell.packages.ghc924 ;
         in
         [
            (haskellPackages.ghcWithPackages (hpkgs : [
                hpkgs.lens 
                hpkgs.servant 
                hpkgs.servant-server 
                hpkgs.warp
                hpkgs.sdl2]))
            haskellPackages.cabal-install
            haskellPackages.haskell-language-server
            pkgs.SDL2
         ];
}
