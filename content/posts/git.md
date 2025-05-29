---
date: "2025-05-22T14:57:51+02:00"
draft: true
title: "Git"
---

Git is a distributed version control system that tracks versions of files. Its main design goals are to be fast, ensure data integrity, and support complex workflows with many branches working simultaneously across different computers. Unlike traditional client-server systems, Git keeps a complete copy of the entire repository, including its history, on each user's local machine. This allows users to work offline and independently track changes without relying on a central server.

---

Create a new Git repository in the current directory.

```sh
git init
```

Create a new Git repository in the current directory and set the default branch to a given name.

```sh
git init -b $BRANCH_NAME
```

Create a new Git repository in the current directory without a working directory.

```sh
git init --bare
```

Create a new Git repository in the given directory without a working directory.

```sh
git init --bare $REPO_PATH
```

Create a new Git repository in the current directory without a working directory and set the default branch to a given name.

```sh
git init --bare -b $BRANCH_NAME
```

```sh
git remote
```

```sh
git remote -v
```

```sh
git remote add $REMOTE_ALIAS $REMOTE_URL
```

```sh
git remote set-url $REMOTE_ALIAS $REMOTE_URL
```

```sh
git status
```

```sh
git add $FILE
```

```sh
git add -u $FILE
```

```sh
git commit -m "$MESSAGE"
```

```sh
git commit --ammed
```

```sh
git push $REMOTE_ALIAS $BRANCH_NAME
```

```sh
git push -u $REMOTE_ALIAS $BRANCH_NAME
```

```sh
git push -f $REMOTE_ALIAS $BRANCH_NAME
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
git pull $REMOTE_ALIAS $BRANCH_NAME
```

```sh
git fetch
```

```sh
git merge
```

```sh
git clone $REMOTE_URL
```

```sh
git clone --depth 1 $REMOTE_URL
```

```sh
git branch -M $BRANCH_NAME
```

```sh
git reset $FILE
```

```sh
git reset HEAD -- .
```

```sh
git reset --hard HEAD^
```

```sh
git restore $FILE
```

```sh
git restore --staged
```

```sh
git restore --staged $FILE
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
git revert $COMMIT --no-edit
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
git config --global user.name $NAME
```

```sh
git config --global user.email $EMAIL
```

```sh
git config --global init.defaultBranch $BRANCH_NAME
```

```sh
git apply $PATCH
```

```sh
git checkout $BRANCH_NAME
```

```sh
git rm --cached $FILE
```

```sh
git submodule add $REMOTE_URL $DESTINATION
```

```sh
git submodule update --remote --merge
```

```sh
git submodule update --init --recursive
```
