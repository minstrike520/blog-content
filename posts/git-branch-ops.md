---
title: Git Basics
published: 2026-05-28
tags:
  - IT-Basics
  - Git
category: IT筆記
---
基礎篇請參考 [Git Basics](git-basics.md)


## 修改分支

before

```
* 2922651 new change (HEAD -> br1)
* 1f8b5b5 old change
```

after

```
* 2922651 new change (HEAD -> br2)
* 1f8b5b5 old change (br1)
```

---
### 步驟一：修改本地紀錄
**作法一**

```bash
git branch -m br2
git branch br1 1f8b5b5
```

- `branch -m`: 將當前 branch 重新命名
- `branch <branch> <commit>` 新增分支

**作法二**

```bash
git checkout -b br2
git branch -f br1 1f8b5b5
```

- `checkout -b`: 相等於 `branch` + `checkout`。
- `branch -f <branch> <commit>` 修改分支指向

### 步驟二：調整指向的 remote

如果用作法一才需要。因為這個只是改名，他們各自指向的遠端沒有被改到。

可以用 `git status` 來檢查當前分支的 upstream。

```
> git status
位於分支 feat-A
您的分支與上游分支 'origin/feat-B' 一致。

沒有要提交的檔案，工作區為乾淨狀態
```

這種時候就需要修改 upstream。

```bash
git branch --set-upstream-to=origin/(branch-name)
```

## 調整指向的 Remote

> git change remote branch reference

```shell
git branch --set-upstream-to=origin/new-remote-branch (local-branch)
```
