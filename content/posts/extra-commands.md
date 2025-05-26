---
date: '2025-05-24T14:15:24+02:00'
draft: true
title: 'Extra Commands'
---

Some useful commands.

---

Allow a permitted user to edit a file as another user using the default editor while ensuring that the editing process is secure. 

```sh
sudoedit $FILE_PATH
```

Change file timestamp or create the file if not exists.

```sh
touch $FILE_PATH
```

```sh
sudo chmod [1-7][1-7][1-7] $FILE_PATH
```

```sh
sudo chmod u+x $FILE_PATH
```

```sh
sudo chmod u-x $FILE_PATH
```

```sh
sudo chown $UID:$GID $FILE_PATH
```

```sh
sudo chown -R $UID:$GID $DIR_PATH
```

```sh
aplay
```

```sh
aplay -l
```

```sh
alsamixer
```

```sh
sh -c "$COMMAND"
```

```sh
cat $FILE_PATH
```

```sh
cat $FILE_PATH | tr "\n" " "
```

```sh
bat $FILE_PATH
```

```sh
pgrep $PROCESS
```

```sh
jobs
```

```sh
jobs %PROCESS
```

```sh
fg
```

```sh
fg %1
```

```sh
bg
```

```sh
command -v $COMMAND
```

```sh
command -v $COMMAND > /dev/null
```

```sh
htop
```

```sh
which
```

```sh
zathura $FILE_PATH
```

```sh
file $FILE_PATH
```

```sh
ps aux
```

```sh
ps aux | grep $STRING
```

```sh
less
```

```sh
man
```

```sh
time
```

```sh
pkg-config --cflags --libs gtk+-2.0
```

```sh
diff $FILE_PATH $FILE_PATH
```

```sh
du $PATH
```

```sh
du -s $PATH
```

```sh
du -sh $PATH
```

```sh
ld
```

```sh
lf
```

```sh
lf $PATH
```

```sh
echo "${VARIABLE_NAME##*/}"
```

```sh
lsmod
```

```sh
lsmod | grep $STRING
```

```sh
newgrp
```

```sh
newgrp $GROUP
```

```sh
getent group $GROUP
```

```sh
rename
```

```sh
shred $FILE_PATH
```

```sh
shred -u $FILE_PATH
```

```sh
whereis $FILE
```

```sh
sha256sum $FILE_PATH
```

```sh
whatis
```

```sh
notify-send $SUMMARY $BODY
```

```sh
openssl rand -base64 24
```

```sh
sudo modprobe
```

```sh
timedatectl
```

```sh
timedatectl --adjust-system-clock
```

```sh
history
```

```sh
printenv
```

```sh
printenv $VARIABLE_NAME
```

```sh
set
```

```sh
logout
```

```sh
xrdb merge $FILE_PATH
```

```sh
xdg-open $URL/$FILE_PATH
```

```sh
free
```

```sh
free -h
```

```sh
lsusb
```

Change directory to the directory where the script is.

```sh
cd "$(dirname "$0")"
```

```sh
sudo netstat -tunlp
```
