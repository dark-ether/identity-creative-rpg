let
  sources = import ./nix/sources.nix {};
  pkgs = import sources.macaroniNix {};
in pkgs.haskell-nix.cabalProject { # macaroni.nix is currently only tested with cabal
  # 'cleanGit' cleans a source directory based on the files known by git
  src = pkgs.haskell-nix.haskellLib.cleanGit {
    name = "haskell-nix-project";
    src = ./.;
  };
  # Specify the GHC version to use.
  compiler-nix-name = "ghc924"; # macaroni.nix is currently only tested on GHC 9.2.4
}
