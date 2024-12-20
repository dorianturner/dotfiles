{ pkgs, lib, ... }:

pkgs.mkShell {
  packages = with pkgs; [
    libgcc       # C/C++ compiler
    clang        # LLVM C/C++ compiler
    cmake        # Build system generator
    ninja        # Fast build system
    gdb          # Debugger
  ];

  shellHook = '' echo "Now ready for C/C++ development" '';
}

