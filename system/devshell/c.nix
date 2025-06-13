{ pkgs, ... }:

pkgs.mkShell {
	name = "c-dev-shell";

 	buildInputs = with pkgs; [
		gcc           # C compiler
		gnumake       # Build system
		gdb           # Debugger
		valgrind      # Memory checker
	];

	shellHook = ''
		echo "C Development Shell Loaded"
	'';
}

