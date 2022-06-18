#!/bin/sh

if [ -z "$USER_NAME" ]; then
    USER_NAME="Liangcheng Juves"
fi

if [ -z "$USER_EMAIL" ]; then
    USER_EMAIL="liangchengj@outlook.com"
fi

if [ -n "$(command -v git)" ]; then
    git config --global user.name "$USER_NAME" &&
        git config --global user.email "$USER_EMAIL" &&
        git config --global init.defaultBranch main &&
        git config --global core.eol lf &&
        git config --global core.autocrlf false &&
        git config --global core.safecrlf true &&
        git config --global core.symlinks true
fi

rm -rf ~/.ssh/* >/dev/null 2>&1
rm -rf /etc/ssh/* >/dev/null 2>&1

ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q -b 4096 \
    -C "$USER_EMAIL"

ssh-keygen -t ed25519 -N '' -f ~/.ssh/id_ed25519 -q -b 4096 \
    -C "$USER_EMAIL"

cat ~/.ssh/id_rsa.pub >>~/.ssh/authorized_keys
cat ~/.ssh/id_ed25519.pub >>~/.ssh/authorized_keys

ssh-keygen -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key -q -C "$USER_EMAIL" &&
    ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key -q -b 4096 -C "$USER_EMAIL" &&
    ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key -q -C "$USER_EMAIL" &&
    ssh-keygen -t ed25519 -N '' -f /etc/ssh/ssh_host_ed25519_key -q -b 4096 -C "$USER_EMAIL"

ssh-keygen -r github.com
ssh-keygen -r gitlab.com
ssh-keygen -r bitbucket.org
ssh-keygen -r jihulab.com
ssh-keygen -r gitee.com
ssh-keygen -r localhost

{
    ssh-keyscan -H -t rsa github.com
    ssh-keyscan -H -t rsa gitlab.com
    ssh-keyscan -H -t rsa bitbucket.org
    ssh-keyscan -H -t rsa jihulab.com
    ssh-keyscan -H -t rsa gitee.com
} >>~/.ssh/known_hosts
