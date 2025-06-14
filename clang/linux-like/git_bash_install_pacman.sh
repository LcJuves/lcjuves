#!/bin/sh
# Created at 2021/8/12 23:42
# @author Liangcheng Juves

# Git-x.y.z-64-bit.exe /SILENT /NORESTART /DIR="C:\Git"
# C:\Git\unins000.exe /SILENT /NORESTART

# MSYS2 Packages
# https://packages.msys2.org/

PACMAN_ARCH="$(uname -m | tr -d "\r|\n")"
URL_PREFIX=https://mirror.msys2.org/msys
# URL_PREFIX=https://mirrors.tuna.tsinghua.edu.cn/msys2/msys
TEMP_DIR="$(mktemp -d)"

echo "Downloading zstd package"
ZSTD_VERSION=v1.5.7
if [ "$PACMAN_ARCH" = "x86_64" ]; then
	ZSTD_ARCH=win64
else
	ZSTD_ARCH=win32
fi
ZSTD_ZIP_NAME="zstd-${ZSTD_VERSION}-${ZSTD_ARCH}.zip"
ZSTD_ZIP_URL="https://github.com/facebook/zstd/releases/download/${ZSTD_VERSION}/${ZSTD_ZIP_NAME}"
echo "$ZSTD_ZIP_URL"
curl -L -o "${TEMP_DIR}/${ZSTD_ZIP_NAME}" "$ZSTD_ZIP_URL"

echo "Unzip zstd package"
unzip "${TEMP_DIR}/${ZSTD_ZIP_NAME}" -d "${TEMP_DIR}"
ZSTD_EXE_PATH="${TEMP_DIR}/zstd.exe"

echo "Downloading pacman package"
PACMAN_VERSION=6.1.0-11
PACMAN_PKG_NAME="pacman-${PACMAN_VERSION}-${PACMAN_ARCH}.pkg.tar.zst"
curl -L -o "${TEMP_DIR}/${PACMAN_PKG_NAME}" "${URL_PREFIX}/${PACMAN_ARCH}/${PACMAN_PKG_NAME}"

echo "Unzip pacman package"
tar -I "$ZSTD_EXE_PATH" -xvf "${TEMP_DIR}/${PACMAN_PKG_NAME}" -C /
mv /usr/bin/pacman.exe /usr/bin/pacman

echo "Downloading pacman mirrors package"
PACMAN_MIRRORS_VERSION=20250220-1
PACMAN_MIRRORS_PKG_NAME="pacman-mirrors-${PACMAN_MIRRORS_VERSION}-any.pkg.tar.zst"
curl -L -o "${TEMP_DIR}/${PACMAN_MIRRORS_PKG_NAME}" "${URL_PREFIX}/${PACMAN_ARCH}/${PACMAN_MIRRORS_PKG_NAME}"

echo "Unzip pacman mirrors package"
tar -I "$ZSTD_EXE_PATH" -xvf "${TEMP_DIR}/${PACMAN_MIRRORS_PKG_NAME}" -C /

echo "Reload Git Bash"
/git-bash.exe --login -i

echo "Downloading MSYS2 keyring package"
KEYRING_VERSION=1~20250214-1
KEYRING_PKG_EXT=zst
KEYRING_PKG_NAME="msys2-keyring-${KEYRING_VERSION}-any.pkg.tar.$KEYRING_PKG_EXT"
curl -L -o "${TEMP_DIR}/${KEYRING_PKG_NAME}" "${URL_PREFIX}/${PACMAN_ARCH}/${KEYRING_PKG_NAME}"

echo "Unzip MSYS2 keyring package"
tar -I "$ZSTD_EXE_PATH" -xvf "${TEMP_DIR}/${KEYRING_PKG_NAME}" -C /

echo "Initialize pacman"
# pacman -Sy --noconfirm 2>&1>/dev/null
pacman-key --init
pacman-key --refresh-keys
pacman-key --populat msys2
pacman -Sydd --overwrite="*" --noconfirm ca-certificates
/git-bash.exe --login -i
pacman -Syu --overwrite="*" --noconfirm
pacman -Sydd --overwrite="*" --noconfirm pacman
pacman -Sydd --overwrite="*" --noconfirm pacman-mirrors
pacman -Sydd --overwrite="*" --noconfirm msys2-keyring
pacman -Sy --dbonly --noconfirm pacman
/git-bash.exe --login -i

rm -rf "${TEMP_DIR}"
# pacman -S --overwrite="*" --noconfirm mingw-w64-clang-${PACMAN_ARCH}-clang
printf "\n"
echo "Everything is ready, you can now enjoy pacman!"
