---
date: "2025-05-30T19:27:58+02:00"
draft: true
title: "FFmpeg"
---

## Description

FFmpeg is a complete, open-source software to record, convert and stream audio and video.

## Options

| Option   | Description  |
| -------- | ------------ |
| -version | Show version |

## Examples

```sh
ffmpeg -f
```

```sh
ffmpeg -codecs
```

```sh
ffmpeg -protocols
```

```sh
ffmpeg -i ${INPUT}.mp4 ${OUTPUT}.webm
```

```sh
ffmpeg -i ${INPUT}.aac -acodec libmp3lame ${OUTPUT}.mp3
```

```sh
ffmpeg -i ${INPUT}.aac -ss 00:00:13 -to 00:00:18 -acodec copy ${OUTPUT}.aac
```

```sh
ffmpeg -i ${INPUT}.m4a -ss 00:00:30 -t 00:01:00 -c:a copy ${OUTPUT}.m4a
```

```sh
ffmpeg -i ${INPUT}.m4a -ss 00:00:30 -t 00:01:00 -c copy ${OUTPUT}.m4a
```

```sh
ffmpeg -i ${INPUT}.mp3 -f s161le -ar 48000 -ac 2 pipe:1 | $DCA_BINARY > ${OUTPUT}.dca
```

```sh
ffmpeg -i ${INPUT}.mp3 -f s161le -acodec pcm_s161e pipe:1 | $DCA_BINARY > ${OUTPUT}.dca
```

```sh
ffmpeg -loop 1 -i ${INPUT}.png -i ${INPUT}.opus -shortest -c copy ${OUTPUT}.mp4
```

```sh
ffmpeg -loop 1 -i ${INPUT}.png -i ${INPUT}.opus -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest ${OUTPUT}.mp4
```

```sh
ffmpeg -i ${INPUT}.webm -c:a libmp3lame -b:a 128k -map 0:0 -f segment -segment_time 10 -segment_list outputlist.m3u8 -segment_format mpegts output%03d.ts
```

```sh
ffmpeg -i ${INPUT}.mp4 -c:v libvpx-vp9 -crf 18 -b:v 0 ${OUTPUT}.webm
```

```sh
ffmpeg -i ${INPUT}.webm -vf scale=1920x1080,setsar=1:1 ${OUTPUT}.webm
```

```sh
ffmpeg -i ${INPUT}.mp4 -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls index.m3u8
```

```sh
ffmpeg -i ${INPUT}.mp4 -lossless 1 ${OUTPUT}.webm
```

```sh
ffmpeg -y -stream_loop -1 -i ${INPUT}.mp4 -i ${INPUT}.opus -map 0:v:0 -map 1:a:0 -shortest -c copy ${OUTPUT}.mp4
```

```sh
ffmpeg -i ${INPUT}.jpg -i ${INPUT}.webm ${OUTPUT}.mp4
```
