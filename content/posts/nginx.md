---
date: "2025-06-03T19:09:40+02:00"
draft: true
title: "Nginx"
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
```

## Site Examples

/etc/nginx/sites-available/$NAME.conf

```conf
server {
    server_name $NAME.localhost;

    location / {
        proxy_pass http://127.0.0.1:$PORT;
    }
}
```

```sh
sudo ln -s /etc/nginx/sites-available/$NAME.conf /etc/nginx/site-enabled
```

```sh
echo "include /etc/nginx/sites-enabled/*;" > /etc/nginx/nginx.conf
```
