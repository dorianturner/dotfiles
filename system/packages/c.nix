{config, pkgs, ...}: 
{
	environment.systemPackages = with pkgs; [
		libgcc
		gnumake
		valgrind
		linuxKernel.packages.linux_zen.perf
		gdb
		
		SDL2
		SDL2_image
		SDL2_mixer
		
		glew
		glfw
		glm
		mesa
		libGL
	];

}
