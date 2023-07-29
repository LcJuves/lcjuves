#!/bin/sh
# https://forge.rust-lang.org/infra/other-installation-methods.html

OS_NAME=$(uname -o)

if [ "$OS_NAME" = "Cygwin" ]; then
    (cd /tmp && curl -L -O -s https://static.rust-lang.org/rustup/dist/i686-pc-windows-gnu/rustup-init.exe)
    /tmp/rustup-init.exe "$@"
else
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- "$@"
fi
