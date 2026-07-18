---
title: 網路管理常用筆記
category: IT筆記
tags:
  - 網路管理
description:
draft: true
published: 2026-05-13
---
檢查一個 port 有沒有開：

```shell
nc -zv IP PORT
```

檢查所有使用中的 port：

```bash
sudo ss -tulpn
```