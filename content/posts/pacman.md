---
date: '2025-05-21T22:57:16+02:00'
draft: true
title: 'Pacman'
---

Pacman is a package management utility for Linux that handles software installation, updates, and removal. It uses compressed package files for efficient storage and maintains a text-based database to track installed packages, allowing for manual adjustments when needed.

Install package

```sh
sudo pacman -S $PACKAGE_NAME
```

Install packages from file

```sh
sudo pacman -S - < $FILE_PATH
```

Install packages from file that are not already installed and without confirmation 

```sh
sudo pacman -S --noconfirm --needed - < $FILE_PATH
```

Install packages from file that are not already installed, without confirmation and without printing stdout and stderr

```sh
sudo pacman -S --noconfirm --needed $PACKAGE_NAME > /dev/null 2> /dev/null
```

Uninstall package

```sh
sudo pacman -Rncs $PACKAGE_NAME
```

Update database

```sh
sudo pacman -Fy
```

Search package

```sh
pacman -Ss $PACKAGE_NAME
```

List all explicitly installed native packages on the system, displaying only their package names

```sh
pacman -Qqen
```

List all explicitly installed native packages on the system, displaying only their package names, and save the output to a file

```sh
pacman -Qqen > $FILE_PATH
```

Find installed package

```sh
pacman -Q | grep $PACKAGE_NAME
```

Show info about an installed packaged

```sh
pacman -Qi $PACKAGE_NAME
```

Find out which package owns a specific file

```sh
pacman -Qo $FILE
```

Search package from command

```sh
pacman -F $COMMAND
```
