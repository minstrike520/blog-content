---
title: OpenCloud Fix
published: 2026-08-28
description: 昨天為了更新軟體，把筆電重開，今天無聊把筆電上面跑的 opencloud 的 log 叫出來看，卻發現服務看起來出現了異常。
kind: doc
tags:
  - OpenCloud
  - 儲存
  - Linux
category: IT 除錯紀錄
draft: false
---
昨天為了更新軟體，把筆電 reboot，今天無聊把筆電上面跑的 [opencloud](https://opencloud.eu/en) 的 log 叫出來看，卻發現服務看起來出現了異常。

log 上面說容器內的 opencloud 沒有權限開他的 etc/ 底下的檔案。容器映像檔沒變，那問題可能出在 volume。

然後我檢查 volume 資料夾，發現底下的 opencloud 不見了。

註：我的 volume 是掛在 /data/srv/opencloud，然後整個 /data 是掛載筆電上的一顆 1TB 硬碟。

我已經做好硬碟損毀的準備，打開 pi agent 把問題敘述給它。

它跑了一會，中途開始遇到各種需要 root 的指令。我把他停下，跟他說有什麼 root 指令叫我人類處理。

然後它才停下來教我發生了什麼事。原來只是我沒有把 /data 的固定掛載設定寫到 /etc/fstab 裡面。掛載並 mount 之後果然一切恢復正常。

---

## 操作紀錄

用 `lsblk -f` 可以看到每一個磁區的詳細資訊，其中就包含 UUID。我把我的 1TB 磁區 UUID 記下來。

然後，在 `/etc/fstab` 新增一行：

```fstab
   UUID=a656d860-987a-458b-b550-f553ce3df455 /data ext4 defaults,noatime 0 2
```

接著執行 `sudo mount -a`，這會按照 fstab 裡面指定的每一行來掛載。並且，如果 fstab 語法之類的有問題，執行這個指令時也會報錯。所以每次寫好 fstab 之後最好都要執行一次 `sudo mount -a`，不然有問題的話，reboot 時可能就沒辦法正常啟動了。