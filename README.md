# Installation

Need to setup a secure boot key for lanzaboote

``` sudo sbctl create-keys ```

Replace the hardware configuration file in system with your own

Should now be able to rebuild with 

``` sudo nixos-rebuild switch ```


Now according to the [quickstart](https://github.com/nix-community/lanzaboote/blob/master/docs/QUICK_START.md) for lanzaboote,
you should enable secure boot in your BIOS and then enroll microsoft keys ```sudo sbctl enroll-keys --microsoft``` and reboot.

