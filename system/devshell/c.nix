{ pkgs, ... }:

pkgs.mkShell {
	name = "c-dev-shell";

 	buildInputs = with pkgs; [
		gcc           
		gnumake      
		gdb         
		valgrind

		SDL2
		SDL2_image
		SDL2_mixer
	];

	shellHook = ''
		echo "C Development Shell Loaded"
	'';
}

