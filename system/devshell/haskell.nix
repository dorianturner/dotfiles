{pkgs, ...}: 

pkgs.mkShell {
	name = "haskell-dev-shell";

	buildInputs = with pkgs; [
		(haskell.packages.ghc948.ghcWithPackages (p:
			with p; [
				# haskell-language-server
				hoogle
				# cabal-install
				# GLUT
			]))
		haskellPackages.cabal-install
	];

	shellHook = ''
		echo "Haskell Development Shell Loaded"
	'';
}
