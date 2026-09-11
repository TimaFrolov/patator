{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    packages = with pkgs; [
        pkg-config
        libmysqlclient
        uv
    ];
}
