---
title: Pi Agent 嘗試中：從 claude 跳槽到更開放、更便宜的替代方案
published: 2026-08-07
description: I use Pi btw
kind: post
tags:
  - 技術心得
  - pi-agent
  - agentic-coding
category: 技術心得
draft: false
---
大約一個月前我的好同學 [lifestone](https://alifestone.github.io/) 跟我（還有其他同學）分享 Claude 推出的[免費七天試用](https://klab.tw/2026/04/claude-code-passes/)，還是在 Fable 5 剛推出、[pro 方案還可以用](https://www.blocktempo.com/anthropic-keeps-fable-included-max-team-premium-plans-pro-credits/)的時候，我還不用爆。用完七天之後完全回不去了，coding agent 怎麼那麼好用啊！信用卡忍不住就刷下去了，所以我就用了一個月的 claude code。

一個月一下就過去了。到了月底又面臨了一次抉擇：我還要再繼續付錢嗎？我開始有點猶豫了。每月燒 20 美金真的有點貴，比電話費還貴。而且 token 總是一下子就用完了。所以我開始尋找替代方案。

看起來 GPT、Gemini 等都要好幾百，中國模型比如 Deepseek、千問之類的也都差不多。是這樣的話，還不如繼續訂 Claude...

然後，我想起那些可以同時使用多種模型的提供商。像是 OpenRouter、OpenCode，在同一個平台上可以用很多種模型。不過主要好像都是按量計價，我想避開這種，總覺得會一不小心就花太多。

最終我找到 OpenCode Go 方案，一個月居然只需要 10 美金，甚至首月只要 5 美金。更好的是，像是 Claude、Gemini、GPT 訂閱方案都是不能串別的 frontend 的，但是 OpenCode 可以。

與此同時，我發現一個叫做 Pi 的 agent 應用。

::github{repo="earendil-works/pi"}

它跟 Claude Code、Codex 是同類型的產品，但首先他是開源的，然後它自己並不提供任何模型服務，所以必須串接別的提供商。