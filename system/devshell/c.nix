{ pkgs, ... }:

pkgs.mkShell {
	name = "c-dev-shell";

 	buildInputs = with pkgs; [
		gcc           # C compiler
		make          # Build system
		gdb           # Debugger
		valgrind      # Memory checker
		perf          # Profiling
		pkg-config    # Dependency manager
	];

	shellHook = ''
		echo "C Development Shell Loaded"
	'';
}

