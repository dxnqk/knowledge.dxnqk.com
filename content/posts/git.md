---
date: '2025-05-22T14:57:51+02:00'
draft: true
title: 'Git'
---

```sh
git init
```

```sh
git init -b <branch>
```

```sh
git init --bare
```

```sh
git init --bare <path>
```

```sh
git init --bare -b <branch>
```

```sh
git remote
```

```sh
git remote -v
```

```sh
git remote add <remote_alias> <remote_url>
```

```sh
git remote set-url <remote_alias> <remote_url>
```

```sh
git status
```

```sh
git add <filepath>
```

```sh
git add -u <filepath>
```

```sh
git commit -m "<message>"
```

```sh
git commit --ammed
```

```sh
git push <remote_alias> <branch>
```

```sh
git push -u <remote_alias> <branch>
```

```sh
git push -f <remote_alias> <branch>
```

```sh
git diff
```

```sh
git diff -u
```

```sh
git pull
```

```sh
git pull <remote_alias> <branch>
```

```sh
git fetch
```

```sh
git merge
```

```sh
git clone <remote>
```

```sh
git clone --depth 1 <remote>
```

```sh
git branch -M <branch>
```

```sh
git reset <filepath>
```

```sh
git reset HEAD -- .
```

```sh
git reset --hard HEAD^
```

```sh
git restore <filepath>
```

```sh
git restore --staged
```

```sh
git restore --staged <filepath>
```

```sh
git rebase -i HEAD~1
```

```sh
git log
```

```sh
git log --oneline
```

```sh
git revert <commit> --no-edit
```

```sh
git config
```

```sh
git config --local
```

```sh
git config --global
```

```sh
git config --global color.ui auto
```

```sh
git config --global pull.rebase false
```

```sh
git config --global user.name <name>
```

```sh
git config --global user.email <mail>
```

```sh
git config --global init.defaultBranch <branch>
```

```sh
git apply <patch>
```

```sh
git checkout <branch>
```

```sh
git rm --cached <filepath>
```

```sh
git submodule add <remote> <destination>
```
