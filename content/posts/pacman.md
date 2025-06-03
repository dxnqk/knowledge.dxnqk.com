---
date: "2025-05-21T22:57:16+02:00"
title: "Pacman"
---

Pacman is a package management utility for Linux that handles software installation, updates, and removal. It uses compressed package files for efficient storage and maintains a text-based database to track installed packages, allowing for manual adjustments when needed.

---

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

## Pacman packages to remember

- alacritty
- alsa-utils
- base
- base-devel
- bat
- bc
- bind
- bitwarden
- blueman
- bluez-utils
- chromium
- composer
- dash
- docker
- docker-buildx
- docker-compose
- exfat-utils
- eza
- fd
- ffmpegthumbnailer
- figlet
- firefox
- foot
- fzf
- gammastep
- git
- gnu-netcat
- go
- grim
- htop
- hugo
- hypridle
- hyprland
- hyprlock
- hyprpaper
- imagemagick
- imv
- inetutils
- jq
- keepassxc
- lf
- libappindicator-gtk3
- libnotify
- libpqxx
- mako
- man-db
- man-pages
- mariadb
- mediainfo
- mpv
- neovim
- nethogs
- net-tools
- network-manager-applet
- nginx
- nmap
- nodejs
- noto-fonts-emoji
- npm
- nwg-look
- openssh
- pcmanfm
- perl-image-exiftool
- php
- php-fpm
- php-sqlite
- plocate
- podman
- podman-compose
- poppler
- rclone
- restic
- ripgrep
- rofi
- rofi-wayland
- rsync
- rustup
- slurp
- speedtest-cli
- stow
- sway
- tcpdump
- tmux
- tree
- ttf-baekmuk
- ttf-font-awesome
- ttf-iosevka-nerd
- ttf-jetbrains-mono-nerd
- ttf-nerd-fonts-symbols
- udiskie
- ufw
- unarchiver
- unzip
- usbutils
- waybar
- wev
- wget
- whois
- wl-clipboard
- wofi
- wtype
- xclip
- xdg-desktop-portal-hyprland
- xdg-user-dirs
- yazi
- yt-dlp
- zathura
- zathura-pdf-mupdf
- zed
- zip
- zsh

## Install AUR Helper (YAY)

```sh
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

## AUR packages to remember

- air-bin
- backrest
- brave-bin
- mullvad-browser-bin
- tailwindcss-bin
- ttf-apple-emoji
- watchman-bin
- zen-browser-bin
