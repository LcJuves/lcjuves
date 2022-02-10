# Markdown
## Generate macOS Big Sur lazy installation package
``` bash
macos_version="Big Sur" && \
macos_name="macOS ${macos_version}" && \
volsize=13000m && \

hdiutil create -o ~/Desktop/"${macos_name}.dmg" -size ${volsize} -volname "${macos_name}" \
-layout SPUD -fs HFS+J && \

hdiutil attach ~/Desktop/"${macos_name}.dmg" -noverify -mountpoint "/Volumes/${macos_name}" && \

sudo "/Applications/Install ${macos_name}.app/Contents/Resources/createinstallmedia" \
--volume "/Volumes/${macos_name}" --nointeraction && \

hdiutil detach "/Volumes/Install ${macos_name}" && \

hdiutil convert ~/Desktop/"${macos_name}.dmg" -format UDTO -o ~/Desktop/"${macos_name}.cdr"
```
***
***
``` bash
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q -b 4096 \
-C "liangchengj@outlook.com"
```
Fedora can following this
``` bash
ssh-keygen -t ed25519 -N '' -f ~/.ssh/id_ed25519 -q -b 4096 \
-C "liangchengj@outlook.com"
```
**Do this to fix `sshd: no hostkeys available -- exiting.`**
``` bash
ssh-keygen -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key -q -C "liangchengj@outlook.com" && \
ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key -q -b 4096 -C "liangchengj@outlook.com" && \
ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key -q -C "liangchengj@outlook.com" && \
ssh-keygen -t ed25519 -N '' -f /etc/ssh/ssh_host_ed25519_key -q -b 4096 -C "liangchengj@outlook.com"
```
***
***
### Windows hidden folder
``` bash
attrib +s +a +h +r .git
```
### Windows display folder
``` bash
attrib -a -s -h -r .git
```
***
***
### Git default configure
``` bash
git config --global user.name "Liangcheng Juves" && \
git config --global user.email "liangchengj@outlook.com" && \
git config --global init.defaultBranch main && \
git config --global core.eol lf && \
git config --global core.autocrlf false && \
git config --global core.safecrlf true && \
git config --global core.symlinks true
```
***
***
### How to find broken soft links in a directory
Use this command to find broken soft links
``` bash
find -L $(pwd) -type l
```
