---
title: Nextcloud + ONLYOFFICE 自架整合
published: 2026-07-22
kind: doc
description:
tags:
  - Nextcloud
  - ONLYOFFICE
  - Docker
category: IT筆記
draft: false
---

onlyoffice 需要用另外的 docker compose 服務跑起來。

nextcloud 應用程式商店中的「ONLYOFFCE」負責 integration，安裝之後才能連結。

nextcloud 安裝好應用程式之後，設定頁面會多一項 ONLYOFFICE 的頁面。

需要填入 docs address 跟 secret

ONLYOFFICE 服務跑起來之後在瀏覽器打開，會看到預設畫面，下面會教你複製 JWT secret：

```bash
sudo docker exec $(sudo docker ps -q) /var/www/onlyoffice/documentserver/npm/json -f /etc/onlyoffice/documentserver/local.json 'services.CoAuthoring.secret.session.string'
```

把 `$(sudo docker ps -q)` 替換為你的 ONLYOFFICE 容器名稱，執行之後把輸出的 secret 複製到前面的欄位

還要注意，如果有用自簽憑證的話，要打開 Disable certificate verification (insecure)。

除此之外，ONLYOFFICE 連回 nextcloud 也會有卡自簽憑證的問題，所以也需要設定：

根據 [這篇求助文章](https://community.onlyoffice.com/t/error-while-downloading-the-document-file-to-be-converted/15649)，ONLYOFFICE 服務要放行自簽憑證，需要到容器中調整設定檔並重啟。

首先進入容器

```bash
docker exec -it (onlyoffce-documentserver 或你的容器名稱) /bin/sh
```

然後打開設定檔

```bash
nano /etc/onlyoffice/documentserver/default.json
```

按 `Ctrl + W` 搜尋 `rejectUnauthorized` 並把後面的值改成 `false`。

最後在容器內重新啟動：

```bash
supervisorctl restart ds:docservice
```

這樣就能通啦！
