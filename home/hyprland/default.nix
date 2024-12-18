{inputs, ...}:

{  
  imports = [
    ./binds.nix
    ./settings.nix
    # ./plugins.nix	
  ];

  home.sessionVariables.NIXOS_OZONE_WL = "1";

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    systemd = {
      variables = ["--all"];
      extraCommands = [
        "systemctl --user stop graphical-session.target"
        "systemctl --user start hyprland-session.target"
      ];
    };
  };
}
