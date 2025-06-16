# Installation

Need to setup a secure boot key for lanzaboote

``` sudo sbctl create-keys ```

Replace the hardware configuration file in system with your own

Should now be able to rebuild with 

``` sudo nixos-rebuild switch ```
