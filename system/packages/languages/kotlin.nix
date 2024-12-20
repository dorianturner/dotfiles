{pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    jdk
    kotlin
    jetbrains.jdk
  ];
}
