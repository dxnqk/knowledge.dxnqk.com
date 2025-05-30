---
date: "2025-05-30T19:44:11+02:00"
draft: true
title: "YT-DLP"
---

## Description

YT-DLP is a command-line tool for downloading audio and video content from a wide range of websites, offering extensive features.

## Options

| Option     | Description   |
| ---------- | ------------- |
| --version  | Print version |
| -h, --help | Print help    |

## Examples

```sh
yt-dlp $URL
```

```sh
yt-dlp -e $URL
```

```sh
yt-dlp -x $URL
```

```sh
yt-dlp -F $URL
```

```sh
yt-dlp -f 303 $URL
```

```sh
yt-dlp -f 299 $URL
```

```sh
yt-dlp -f 139 $URL
```

```sh
yt-dlp --get-title $URL
```

```sh
yt-dlp --download-archive $URL
```

```sh
yt-dlp --restrict-filename $URL
```

```sh
yt-dlp -f 137+140 -o "%(title)s.%(ext)s" --restrict-filename $URL
```

```sh
yt-dlp --no-warnings $URL
```

```sh
yt-dlp --no-warnings --quiet $URL
```

```sh
yt-dlp --simulate $URL
```

```sh
yt-dlp --quiet --simulate --no-warnings $URL
```

```sh
yt-dlp -f 139 -o "%(id)s.%(ext)s" -P $OUTPUT_PATH $URL
```

```sh
yt-dlp --list-extractors
```

```sh
yt-dlp --list-formats $URL
```

```sh
yt-dlp -f "bestaudio[ext=m4a]" --output "%(id)s.%(ext)s" --paths $OUTPUT_PATH $URL
```
