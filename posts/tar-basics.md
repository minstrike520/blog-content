---
published: 2026-01-08 09:25:00
updated: 2026-01-08 09:25:00
category: IT筆記
title: 一直覺得 tar 的指令很難記，跟其他指令的邏輯都不太一樣。
kind: doc
tags:
  - CLI-apps
---
## 基本旗標

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

## 自動刪除原檔案

```
tar cvf package.tar --remove-files folder/
```

不過這只是便宜行事，變成 remove 的行為沒辦法自定義。比較複雜的情況還是自己寫 `rm`  就好。

## 指定格式

[前面的小節](#不壓縮，純打包)中展示了不加 `z` 旗標就是不壓縮、純打包，那麼 `z` 就是「我要壓縮」的意思嗎？不完全是！

`z` 其實是 gzip 的意思，用了這個旗標的意思是「我要用 gzip 壓縮/解壓縮」。這也是為什麼輸出檔案的副檔名被定為 `.tar.gz`。

除了 gzip 以外，還有另外一個效能更高、但沒那麼通行的格式叫做 zstd。可以使用以下方法來指定：

```bash
tar --zstd -cvf package.tar.zst folder/
tar --zstd -xvf package.tar.zst
```

相應地，副檔名則定為 `.tar.zst`。

## 保留所有權設定

### 壓縮

```bash
tar cgvf package.tar.gz folder/
```

`g` 旗標的意思即為保留 UID 跟 GID。

### 解壓縮

```
sudo tar xgvf package.tar.gz
```

- `sudo`: 一般使用者沒有還原 `root` 的能力，因此必須要先獲得 root previlege，否則所有權還是會被洗掉。
- `g`: 同上