{pkgs, ...}:

{
    environment.systemPackages = with pkgs; [
        inetutils
    ];
}
