---
date: "2025-05-30T19:05:40+02:00"
draft: true
title: "Ufw"
---

## Description

Ufw (Uncomplicated Firewall) is a command-line tool for managing the Linux netfilter firewall. Designed for simplicity, it allows users to easily configure and control firewall rules without needing in-depth technical knowledge.

## Options

| Option     | Description                                  |
| ---------- | -------------------------------------------- |
| --version  | Show program version                         |
| -h, --help | Show help message                            |
| --dry-run  | Don't modify anything, just show the changes |

## Commands

| Command | Description                                    |
| ------- | ---------------------------------------------- |
| enable  | Reloads firewall and enables firewall on boot  |
| disable | Unloads firewall and disables firewall on boot |
| reload  | Reloads firewall                               |
| status  | Show status of firewall and ufw managed rules  |

## Examples

```sh
ufw enable
```

```sh
ufw disable
```

```sh
ufw reload
```

```sh
ufw status
```
