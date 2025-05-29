---
date: "2025-05-29T21:52:24+02:00"
draft: true
title: "Restic"
---

## Description

Restic is an open-source backup tool that securely encrypts and stores your files across various storage backends, including both self-hosted and cloud services.

## Options

| Option        | Description                          |
| ------------- | ------------------------------------ |
| -v, --verbose | Be verbose                           |
| -r, --repo    | Repository to backup or restore from |

## Commands

| Command | Description                                     |
| ------- | ----------------------------------------------- |
| backup  | Create a new backup of files and/or directories |

## Examples

```sh
restic -v
```

```sh
restic -r $REPO init
```

```sh
restic -r sftp:$USER@$HOST:$REPO init
```

```sh
restic -r $REPO backup $PATH_TO_BACKUP
```

```sh
restic -r $REPO backup $PATH_TO_BACKUP --exclude=$PATH_TO_EXCLUDE
```

```sh
restic -r $REPO backup --files-from=$FILEPATH
```

```sh
restic -r $REPO list
```

```sh
restic -r $REPO list index
```

```sh
restic -r $REPO list keys
```

```sh
restic -r $REPO list blobs
```

```sh
restic -r $REPO list snapshots
```

```sh
restic -r $REPO restore
```

```sh
restic -r $REPO restore latest
```

```sh
restic -r $REPO restore latest --target $PATH_TO_RESTORE
```

```sh
restic -r $REPO ls
```

```sh
restic -r $REPO forget $SNAPSHOT
```

```sh
restic -r $REPO forget $SNAPSHOT --prune --keep-hourly 24 --keep-daily 7
```

```sh
restic -r $REPO key list
```

```sh
restic -r $REPO diff $SNAPSHOT $SNAPSHOT
```

```sh
restic -r $REPO check
```

```sh
restic -r $REPO snapshots
```
