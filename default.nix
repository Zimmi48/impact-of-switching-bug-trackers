{ pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/8634c3b619909db7fc747faf8c03592986626e21.tar.gz";
    sha256 = "0hcpy4q64vbqmlmnfcavfxilyygyzpwdsss8g3p73ikpic0j6ziq";
  }) {}
, pythonPackages ? pkgs.python3Packages
}:

pkgs.mkShell {
  buildInputs = with pythonPackages; [
    jupyterlab requests numpy pandas matplotlib statsmodels scipy
  ];
}
