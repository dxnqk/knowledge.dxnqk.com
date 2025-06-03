---
date: "2025-06-03T18:38:36+02:00"
draft: true
title: "Systemd"
---

## Description

## Options

| Option | Description |
| ------ | ----------- |
|        |             |

## Commands

| Command | Description |
| ------- | ----------- |
|         |             |

## Examples

```sh
sudo systemctl enable --now $SERVICE@$USER.service
```

## Service Examples

### Suspend with rewake

suspend-oneshot.service

```service
[Unit]
Description=Suspend Oneshot

[Service]
Type=oneshot
ExecStart=/usr/bin/rtcwake -m mem --date +12h
```

suspend.timer

```service
[Unit]
Description=Suspend Timer

[Timer]
Unit=suspend-oneshot.service
OnCalendar=*-*-* 19:00:00 UTC

[Install]
WantedBy=timers.target
```
