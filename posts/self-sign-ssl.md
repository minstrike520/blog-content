---
title: 自簽 SSL 憑證
published: 2026-05-13
description:
tags:
  - 網路管理
category: IT筆記
draft: true
---
最近開始頻繁需要自架服務。只要是內網，或者透過 Tailscale 存取的，我就一律用 HTTP。因為感覺 SSL 自簽署

但是，我發現這樣經常會遇到問題。每個服務似乎都是以 HTTPS 為預設選項，想要改成 HTTP 就需要手動配置，有時還很麻煩。

我心想，與其每開一個服務就折騰一次 HTTP，還不如早點研究怎麼自簽署 SSL，也許反而能省下