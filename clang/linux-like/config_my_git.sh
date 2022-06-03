#!/usr/bin/env bash

USER_NAME="Liangcheng Juves"
USER_EMAIL="liangchengj@outlook.com"

git config --global user.name "$USER_NAME" &&
    git config --global user.email "$USER_EMAIL" &&
    git config --global init.defaultBranch main &&
    git config --global core.eol lf &&
    git config --global core.autocrlf false &&
    git config --global core.safecrlf true &&
    git config --global core.symlinks true

ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q -b 4096 \
    -C "$USER_EMAIL"

ssh-keygen -t ed25519 -N '' -f ~/.ssh/id_ed25519 -q -b 4096 \
    -C "$USER_EMAIL"

ssh-keygen -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key -q -C "$USER_EMAIL" &&
    ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key -q -b 4096 -C "$USER_EMAIL" &&
    ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key -q -C "$USER_EMAIL" &&
    ssh-keygen -t ed25519 -N '' -f /etc/ssh/ssh_host_ed25519_key -q -b 4096 -C "$USER_EMAIL"

ssh-keygen -R github.com
ssh-keygen -R gitlab.com
ssh-keygen -R bitbucket.org
ssh-keygen -R jihulab.com
ssh-keygen -R gitee.com
