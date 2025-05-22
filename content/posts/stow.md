---
date: '2025-05-21T22:57:47+02:00'
draft: true
title: 'Stow'
---

Stow is a symlink management tool that organizes multiple software or data packages stored in different directories. It creates symbolic links so that these packages appear to be installed in a single, unified directory.

Create symbolic links for all the subdirectories of the current directory

```sh
stow -v */
```

Delete the symbolic links of all the subdirectories of the current directory

```sh
stow -vD */
```

Create symbolic links for all the subdirectories of the current directory, using a specified custom directory as the target instead of the default parent directory.

```sh
stow -v --target=$PATH */
```
