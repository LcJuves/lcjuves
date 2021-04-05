# Markdown
## Generate macOS Big Sur lazy installation package
``` bash
hdiutil create -o ~/Desktop/Big\ Sur.dmg -size 13000m -volname Big\ Sur -layout SPUD -fs HFS+J

hdiutil attach ~/Desktop/Big\ Sur.dmg -noverify -mountpoint /Volumes/Big\ Sur

sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia \
--volume /Volumes/Big\ Sur --nointeraction

hdiutil detach /Volumes/Install\ macOS\ Big\ Sur

hdiutil convert ~/Desktop/Big\ Sur.dmg -format UDTO -o ~/Desktop/Big\ Sur.cdr
```
***
***
``` bash
ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q -b 4096 -C "liangchengj@outlook.com"
```
``` bash
ssh-keygen -R "host.danger.icu"
```
**Do this to fix `sshd: no hostkeys available -- exiting.`**
``` bash
ssh-keygen -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key -q && \
ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key -q -b 4096
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
git config --global core.eol lf && \
git config --global core.autocrlf false && \
git config --global core.safecrlf true
```
***
***
### How to find broken soft links in a directory
Use this command to find broken soft links
``` bash
find -L $(pwd) -type l
```
- You can also specify the action by `-delete`. For example, delete the soft links that are broken in the current directory
``` bash
find -L $(pwd) -type l -delete
```
