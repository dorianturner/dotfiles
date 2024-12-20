{pkgs, config, ...}:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    git
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    curl
    
    # Kotlin
    jetbrains.idea-community

    nerdfonts
    neovide
    neovim
 
    # Useful Utilities
    grimblast
    btop
    powertop  
    thermald
    power-profiles-daemon
    sutils
    xfce.thunar

    glib
    gsettings-desktop-schemas    

    # Games
    steam
    steam-tui
 
    kitty
    brave
    brightnessctl
    pulseaudio
    alsa-utils
    pavucontrol
    yazi
    
    p7zip
    xdg-desktop-portal-hyprland 
  ];
}
