---
title: Docker 透過 .dockerignore 減少映像檔建置時間
published: 2026-07-28
description: Build context 很大也還是能跑，但是會拖慢開發效率。
tags:
  - Docker
category: IT筆記
draft: false
kind: doc
---
最近做專案，每次執行 `docker compose up --build` 時，都會看到一個 log 卡很久：

```
WARN[0000] Docker Compose requires buildx plugin to be installed
Sending build context to Docker daemon  7.866MB
```

第二行那個大小有時候會跑到幾百 MB 甚至到 1GB，讓我覺得有點奇怪：怎麼還沒開始執行任何步驟，就要傳那麼多東西？

原來，那是因為我在 docker-compose.yml 裡面寫了這一行：

```yaml
build: .
```

Docker Build 有一個概念叫做「Build Context」，根據 [docker 官方網站](https://docs.docker.com/build/concepts/context/) 所述，就是 build 時供 worker 使用的所有檔案。而寫 `build: .` 就代表 docker compose 每次都會把專案目錄底下的**所有**檔案都丟給 worker。而專案目錄又常常有 Rust 的 `target/`、Node.js 的 `node_modules/`，但 docker build 過程又會自己安裝、編譯一次，所以 context 根本不該包含這些資料夾。

那麼，我們要怎麼把指定的檔案在 build 時排除、不要帶進 build context 呢？

Docker 有提供一種方法：撰寫 `.dockerignore`。

用跟 gitignore 相同的語法列舉不想帶入 build context 的檔案，然後寫入跟 Dockerfile 同級目錄的`.dockerignore` 檔案中，比如：

```bash title=".dockerignore"
# 編譯產物
target/
web/dist/
web/node_modules/

# 執行期資料
data/
data-v0.1/

# 雜項
.git/
.gitignore
*.md
backlog/
```

如此一來，所有指定的檔案都不會帶入 build context 了。