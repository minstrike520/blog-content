---
title: COSCUP 2026
published: 2026-08-12
description: COSCUP 2026 與會心得
kind: post
tags:
  - 開源
  - 社群
  - COSCUP
category: 雜談
draft: false
---
上週六、日，我去了 [COSCUP 2026](https://coscup.org/2026/)。這是我第二次參加 COSCUP，上一次是 2025。

這一次去，我覺得比上次更有收穫。我也從兩次體驗的異同之中感受到自己的成長跟將來在專業上努力的方向。

## Social

如果你曾經當過 COSCUP 會眾，不知道你對「60% 交朋友、40% 聽議程」的口號有沒有印象？

我個人覺得這句口號幫助我建立了不錯的與會心態。吸收專業內容確實很重要，但是那些不論是在線上還是線下都能做，而且線上做可能效率還更高——除了豐富的網路資源，還有大語言模型的幫助。所以在線下就是要做一些只有線下才能做的事情，也就是面對面的互動。

話雖如此，我自認並不是很有社交的技巧。對我來說，在一個環境自在與否直接影響了我對社交的態度。今年畢竟我來第二次了，對於整體環境有一些熟悉感。但是在專業上我還是算小菜雞，所以多少還是有點緊張。

第一天有一個議程是[世界咖啡館 - AI 時代的開源安全：台灣社群可以怎麼一起補位？](https://coscup.org/2026/session/SQ9NNS)，討論開源專案的資安議題，分成四桌，每一桌有桌長帶領參與者討論。雖然我對資安幾乎沒什麼了解，但是衝著是個 social 的好機會，而且參與者又有認識的人，最後鼓起勇氣參與了。

有一個驚喜是，在去拍形象照的時候居然遇到了在當志工的 [JN](https://blog.giveanornot.com/coscup-2026/)！前幾天才收到他幫我開通 [IndiePing](https://indieping.giveanornot.com/) 的電子郵件，我就夠驚訝了，沒想到今天直接見到本尊。真的感覺超奇妙的，我近半年才開始在廣泛逛各種部落格，其中很早就有關注 JN，沒想到本來只在網路上見過聽過的人就這樣出現在我眼前...。

晚上也有去 SITCON BoF。基本上那就是個大型的聚會現場，我一度陷入社交焦慮，想要默默溜走。但還好有遇到同系的夥伴，我不僅有他們講上話，還有跟他們認識的人聊天並互相認識。我在這種場合時總是會想，為什麼大家都有認識的人可以講上話啊？大概就是像這樣，透過社群之外的聯繫＋現場的引介，逐漸擴張人際網路的吧。

第二天，我有做一個上次沒有想像過的事情：逛社群攤位。其中比較有意思的是 [opencocon.org](https://opencocon.org/) 跟 [Ubuntu Touch](https://www.ubuntu-touch.io/)。我覺得自己很了不起，同時做到用英文講話跟主動靠近一個攤位並問一些問題。

## 其他心得

前後兩年，參加相同的年會，讓我可以把他作為我專業能力的量尺。

一方面我發現，我的專業能力並沒有增加很多。那些認真討論技術的議程，比如 Linux Kernel、運維、資料庫、大語言模型等等議程軌我仍舊一竅不通。

另一方面，還是有某一些能力正在進步：關於 GitHub 協作、容器化技術，以及 agent harness 之類，我變得略知一二。

去年此時，我應該還不太清楚 pull request 到底為什麼要存在。今年，我帶著在系上做專案時得到的協作經驗，已經在真實情境操作過 pull request。關於 PR，在年會上得到了建議：如果想要對開源專案有所貢獻，發 PR 比發 issue 強得多（前提是，不要是 AI Slop！）。

我對容器化的理解也是從「那是什麼？可以吃嗎？」變成至少有用 docker compose 跑一些東西，也略知 volume、network、image 等概念。我甚至在社群攤位問說個人沒有多台實體機的情況下要怎麼學 K8S，得到建議說可以直接去看他的 issue 去增進對原始碼的理解。但仔細想想，其實我應該先把 docker 了解得更徹底再說吧！

## 與會資料

列舉一些我有聽的議程：

**Day 1**

1. [用 zhtw-mcp 搭配 AI 寫出更像台灣人的中文 | Write Taiwanese Mandarin: zhtw-mcp as a Linguistic Linter for Traditional Chinese](https://coscup.org/2026/session/7VSVUT) 
	慕 [jserv](https://wiki.csie.ncku.edu.tw/User/jserv) 之名而來。演講風格正如他的上課風格，十分獨特而又幽默，讓人完全不會分心。聽完之後第一個想法是：這是標題詐欺吧！我本來預期重點會是講 MCP，結果其實半小時只有最後十秒有提到一次這個專案，全篇重點是放在「台灣中文應該怎麼寫」這件事上。
	不過我其實更喜歡這樣的安排。畢竟都是 AI 時代了，（非技術核心的）程式碼並沒有那麼有價值，與其講解這個 MCP 的每個實作，不如講講背後的心法，增進 domain knowledge 可能才是面對 [Jagged Intelligence](https://technews.tw/2025/06/08/google-ceo-pichai-proposed-a-new-term-of-artificial-jagged-intelligence/) 的正確態度。
	講回來，我也很同意 jserv 的觀點：語言在地化不止是替換詞彙而已，而需要通盤考量；做在地化也不是意識形態先行，而是追求行文的通順跟生活化。
2. [提供 KDE 台文翻譯的嘗試](https://coscup.org/2026/session/39SXDY)
	本土語言跟開源都是我關注的議題，甚至我桌面環境也是用 KDE Plasma，這一個議程對我來說滿有趣的。之後等正式版上線之後可以嘗試一下。
	我覺得這可以說是開源對於本土化運動的一大福音吧。我們幾乎無法期待 Apple、Google、Microsoft 這些大公司花什麼精力來做台語、客語、南島諸語在地化這種需求連幾萬人都沒有、也沒多少政治重要性（對他們來說）的事情。但是 KDE 是個開源專案，並且接受在地化相關貢獻。就像[閩南語維基百科](https://zh.wikipedia.org/zh-tw/%E9%96%A9%E5%8D%97%E8%AA%9E%E7%B6%AD%E5%9F%BA%E7%99%BE%E7%A7%91)之所以能夠誕生一樣，有賴少數無私奉獻自身心力的志士們維護這些小語種內容，社群中的大家都能因此受惠。
	在這個議程結束之後，很多人在給講者讚賞之餘，也特別提醒他要保重身體。這種事業枯燥而辛苦，在此給予講者 respect。
3.  [年齡驗證、數位監控、隱私權，討論這些以前，不妨先開源吧](https://coscup.org/2026/session/JSMGDZ/)
    這種主題似乎叫做「科技治理」。一開始是想說畢竟有在用 Discord，之前年齡驗證有很大爭議，就因此來聽聽。
4. [編輯器的歷史、現況與未來：從 Electron 到 Rust 與 GPU 驅動的現代化架構 (以 Zed 為例)](https://coscup.org/2026/session/T37ECE)
5. [[Prime Session] Becoming an Open-Source Coder - why & how](https://coscup.org/2026/session/K89MHJ)
	慕[高天](https://www.youtube.com/@minkoder)之名而來。[講座筆記](/posts/coscup-2026-becoming-os-coder)

**Day 2**

6. [Agent 很方便，但有些 PR 我還是想自己寫](https://coscup.org/2026/session/JLQPTY)
7. [open-slide：從騎車時的靈感到衝上 GitHub Trending](https://coscup.org/2026/session/JTPCAZ)
8. [透過ClaudeCode，Gemini Cli，Codex來瞭解harness](https://coscup.org/2026/session/M8WTHA)
9. [帶上你的 Coding Agent，我們現場替 Zed Editor 送一個 PR 吧](https://coscup.org/2026/session/7TEGJH)
