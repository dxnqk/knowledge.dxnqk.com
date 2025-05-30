---
date: "2025-05-30T18:52:06+02:00"
draft: true
title: "Fontconfig"
---

## Description

Fontconfig is a library that manages and provides information about available fonts. It also handles font configuration and rendering settings for applications.

## Options

| Option        | Description                                     |
| ------------- | ----------------------------------------------- |
| -v, --verbose | Be verbose                                      |
| -f, --format  | Format output according to the format specifier |

## Examples

```sh
fc-list
```

```sh
fc-list : family
```

```sh
fc-list : family | sed "s/,.*$//"
```

```sh
fc-list : family | sed "s/,.*$//" | sort -u
```

```sh
fc-list : family | sed "s/,.*$//" | sort -u | wc -l
```
