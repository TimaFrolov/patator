{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  packages = with pkgs; [
    pkg-config
    libmysqlclient
    uv
  ];

  shellHook = "uv pip install 'setuptools<82.0.0' ";
}
