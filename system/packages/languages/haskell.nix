{pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    (haskellPackages.ghcWithPackages (p: 
      with p; [
        cabal-install
        GLUT
      ]
    ))
  ];
}
