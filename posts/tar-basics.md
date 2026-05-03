---
published: 2026-01-08 09:25:00
updated: 2026-01-08 09:25:00
category: IT筆記
title: Tar Basics
tags:
  - CLI-apps
---
一直覺得 tar 的指令很難記。

- **加入/解開**：`-c` (Create), `-x` (Extract)
- **指定檔案**： `-f` (File/Folder)
- **7Z格式**（得到 `.tar.gz`）：`-z`
- **詳細輸出**：`-v` (Verbose)

## 一般使用方式

**指定單獨檔案**

```bash
tar czvf package.tar.gz folder/
```

**指定多個檔案**

```
tar xzvf package.tar.gz folder1/ folder2/ file1 file2
```

值得注意的是，如果指定多個檔案，那麼解壓縮時這些檔案也會直接撒在指定目錄下，而不是只放在一個資料夾中，如例：

```bash
pwd
# /test1
ls
# folder1 file1 file2
tar czvf package.tar.gz folder1/ file1 file2
mv package.tar.gz /test2/
cd /test2
tar xzvf package.tar.gz
# folder1/some-content
# folder1/some-other-content
# folder1/...
# file1
# file2
ls -p
# folder1/ file1 file2
```

## 不壓縮，純打包

Tar 也可以不指定壓縮格式，這樣一來就只會打包，而不會進行任何壓縮：

```bash
tar cvf package.tar folder/
```