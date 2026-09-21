---
title: 系統程式 Week 2
published: 2026-09-21
description: 系統程式第二週：系統程式的定義、計算機架構與 SIC
kind: doc
tags:
  - 系統程式
category: 大學修課
draft: false
---
## Topics Today

- [Definition of System Software](#Definition%20of%20System%20Software)
- [System Software and Machine Architecture](#System%20Software%20and%20Machine%20Architecture)
- The Simplified Instructional Computer, SIC
	- Von Neumann Architecture
		- Memory
		- Registers
		- Data Formats
		- Instruction Formats
		- Addressing Modes
		- Instruction Set

## Definition of System Software

系統程式指的是用於操作與控制計算機的程式。系統程式的其中一個相對概念是應用程式；系統程式可以想像為應用程式跟計算機硬體之間的溝通橋樑。

系統程式包含以下幾類程式：一、工具程式，如資料壓縮程式、檔案管理器；二、硬體驅動類軟體，如驅動程式、BIOS、韌體；三、圖形化相關軟體，如視窗管理器、顯示卡驅動程式等；四、軟體開發工具，如編譯器、組譯器、連結器等。

## System Software and Machine Architecture

計算機架構/Architecture 跟計算機組織/Organization 這兩個詞經常同時出現，但是兩者意義並不相同。架構指的是「CPU 指令集相關的硬體設計」，組織指的是「指令集以外的硬體設計」。

### Von Neumann Architecture

Bus 實際上是由幾十條電線所組成的，分為位址匯流排/address bus、資料匯流排/data bus 跟控制匯流排/control bus。假如說接到命令說要把第 x 位址的位元組送過去，此時資料匯流排因為有 8 條線，就可以一口氣送過去。同理，因為 SIC 記憶體大小是 $2^{15}$ 個位元組，位址為 15 位元，所以需要 15 條線一口氣把一個位址送過去。而控制匯流排分為 Mem/IO 跟 R/W。Mem/IO 在 IO 的情況下，bus 會讓位給 CPU 與其他 IO 裝置使用。

隨著時代進展，有些計算機會一口氣送多個位元組進入 CPU。比如，假如暫存器的大小為 24 位元，就把資料匯流排改為 24 條線。而位址匯流排就不用改，抓資料時一次送入記憶體上連續的三個位元組。進而，我們幫「三個位元組」這個單位命名為「字組/word」。

N-bit 計算機，有些人會說是位址匯流排的大小，但是教授認為這個說法是錯的；正確的說法應該是「字組的大小」。

電腦 8086 跟 8088 是上古的電腦。兩個都是 16 位元，但是 8088 的資料匯流排只有 8 排，資料就分成 2 個週期。

---

See slide p19. 其中 x 叫做旗標/flag，用來標示後面的位址要不要加上 A 暫存器。

See textbook p496。加法為 `LDA m`；乘法為 `MUL m`。

旗標在使用 `LDA m, x` 這樣的形式時就會為 1，否則都為 0。