{ config, pkgs, ...}:

{
	environment.systemPackages = with pkgs; [
		libsForQt5.dolphin
		brightnessctl
		git
		kitty
		tree
		wget
		wofi
		sutils
		gnumake
		cargo
		sbctl # troubleshooting for secure boot

		android-studio
		vlc
		gparted
		samba
	];

}
