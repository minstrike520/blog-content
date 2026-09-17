## 友鏈

<style>
/* 1. 父容器：確保子元素可以被拉伸 */
.banner-container {
    display: flex;
    gap: 0em;
    /* 改用 stretch，這會讓所有 <a> 標籤自動變成一樣高（以最高的那個為準） */
    align-items: stretch; 
    justify-content: center;
}

/* 2. 連結標籤：變成 Flex 容器來置中圖片 */
.banner-container a {
    display: flex !important;       /* 必須是 flex 才能響應父層的 stretch */
    align-items: center;           /* 讓圖片在 <a> 裡面垂直置中 */
    justify-content: center;       /* 讓圖片在 <a> 裡面水平置中 */
    padding: 0 !important;
    margin: 0 !important;
    border: 1px solid transparent; /* 技巧：加個透明邊框有助於排版穩定，或依需求換成實色 */
    text-decoration: none;
    height: 2em;
}

/* 3. 圖片：消除所有干擾高度的因素 */
.banner-container img {
    display: block !important;
    margin: 0 !important;          /* 徹底消除之前的 32px 影響 */
    max-height: 100%;              /* 確保圖片不會超出 <a> 的範圍 */
    height: auto;
    pointer-events: none;
    border-radius: 0 !important;
}
</style>

<center>
<div class="banner-container">
    <a title='ヤチヨの部屋' href="https://yachiyo.net/#/">
        <img src="/yachiyo_net_banner_jp.gif" alt="ヤチヨの部屋バナー" class="banner-img">
    </a>
    <a title='Diggon lol' href="https://diggon.lol/">
        <img src="https://diggon.lol/pictures/icons/88x31.gif">
    </a>
    <a href="https://blog.giveanornot.com/">
        <img src="https://blog.giveanornot.com/logo.webp" alt="資工小廢物 - JN 的露狗">
    </a>
</div>
</center>



## 關於我

我是 Blade，有時也會稱呼自己為磯江。師大資工大三。林口人。

## 興趣＆關注

### 台語。

在家裡偶爾會講台語。平常會關注台灣本土語言復振的議題。會用羅馬拼音輸入台文。全羅文閱讀速度偏慢；漢羅、全漢 ok。

### 音樂喜好。

動畫（MyGO!!!!!、結束バンド）、Vocaloid（いよわ、PinocchioP、稲葉曇、マサラダ、Deco\*27、）、日搖（髭男dism）、華語搖滾（草東、珂拉琪）

### 音樂創作。

會用 OpenUTAU；編曲軟體只有用過一點點 GarageBand 跟網頁版的 BandLab。

### 吉他。

練過指彈跟電吉他（主要是節奏吉他）。指彈有練過的曲子：Gravity、Anger、Rider、Like A Star(棄坑)、Flaming(棄坑) 跟動漫曲改編（Orange、炎）

### 繪圖。

有一個繪帳，多數貼文都是沒有著色的臨摹。

### 主機遊戲。

- Devil May Cry 4
- 仁王
- Halo 4
- 三國無雙 V
- 鋼彈無雙
- 潛龍諜影：Survive
- 蜘蛛人(2018)

### PC Setup。

平常使用的作業系統是 Arch Linux＋KDE Plasma，不過最近換了 Macbook 之後就相對少用。

### 其他。

- 我對於資料夾跟筆記整理情有獨鍾，常常一不小心就花太多時間。用過的生產力軟體有 Notion、Google Keep、Logseq、Obsidian。
- 用 Obsidian LaTeX Suite 這個插件，我有信心可以在電腦上打超過手寫速度的數學方程式（正如它所宣稱的）
- 開源服務嘗試中，目前比較常在用的有 Immich(相簿)、Firefly III(記帳)、FreshRSS(RSS 閱讀器)

## 關於這個網站

這個部落格始於 2025/12/30。早於這個時間的貼文都是從別處的筆記遷移過來的。

我會在這個部落格寫一些軟體使用相關的筆記，也會把一些大學學科的筆記同步進來。

部落格在 2026/2/2 遷移到 Fuwari/Astro。

::github{repo="minstrike520/blog-fuwari"}

## 本站備忘＆待辦

- [ ] If `kind=docs`: `/posts/xxx` redirect to `/docs/xxx`

