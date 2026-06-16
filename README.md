# WAFO Design Asset Library

話佛牌設計素材庫，用來把 **WAFO Design Asset Library v2 CLEAN FULL** 架成 GitHub Pages 靜態資產庫，給 BVSHOP、首頁 HTML、BLOG 封面、分類卡片、Banner 背景與未來 Codex 專案共用。

目前 repo 已建立 GitHub Pages 基本架構：

- `.nojekyll`
- `index.html`
- `README.md`
- `docs/UPLOAD_AND_PAGES_SETUP.md`
- `docs/SELF_CHECK_REPORT.md`

> 重要：完整素材包有 1,087 個檔案、約 86.91 MB。若用 GitHub 網頁上傳，建議先解壓後整批拖拉資料夾；若用本機 Git，請直接 `git add . && git commit && git push`。

---

## 建議正式目錄

```text
assets/svg/                 SVG 512 tight，currentColor，可 CSS 控色
assets/png512/              512x512 clean transparent PNG，給 Canva / Figma / 大圖示
assets/webp-transparent/    WebP 透明裝飾素材，給網站輕量裝飾
assets/bg1920/              1920x1080 大背景 WebP，給 Banner / 區塊底圖
css/                        CSS data URI 與外部 URL 模板
manifest/                   素材對照表、分類統計、CSS class index、audit 清單
preview/                    每類預覽圖與總預覽圖
demo/                       HTML demo
docs/                       架設說明與自我檢查報告
```

---

## GitHub Pages URL 規則

Repo：

```text
https://github.com/BertWang/wafo-assets
```

GitHub Pages 根網址：

```text
https://BertWang.github.io/wafo-assets/
```

SVG 範例：

```text
https://BertWang.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg
```

WebP 背景範例：

```text
https://BertWang.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-bg-08_thai_ornament-001.webp
```

---

## BVSHOP 使用範例

### SVG 圖示

```html
<img src="https://BertWang.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg"
     alt="WAFO icon"
     style="width:72px;height:72px;display:block;">
```

### WebP 背景

```html
<div style="background-image:linear-gradient(rgba(255,248,236,.82),rgba(255,248,236,.82)),url('https://BertWang.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-bg-08_thai_ornament-001.webp');background-size:cover;background-position:center;background-repeat:no-repeat;">
  內容放這裡
</div>
```

### CSS data URI 版

BVSHOP 沒有圖庫後台時，可先用：

```text
css/wafo-assets-v2-clean-data-uri-ALL.css
```

這份把 SVG 直接寫進 CSS，不依賴外部圖片網址。

---

## 上傳後必查

請依序確認：

1. `https://BertWang.github.io/wafo-assets/` 可以開啟首頁。
2. `preview/all_categories_preview_v2_clean.jpg` 可以開啟。
3. SVG 範例網址可以開啟。
4. WebP 背景範例網址可以開啟。
5. `manifest/wafo_design_asset_manifest_v2_clean.csv` 可以開啟。
6. BVSHOP 測試 HTML 可正常讀取 SVG / WebP。

---

## 版本紀錄

### v2 CLEAN FULL

- 先去背 / 清白底 / 清殘影
- 輸出 512x512 clean PNG
- 再轉 SVG path
- SVG 保留 `width="512" height="512"`
- tight viewBox，避免圖案過小
- CSS mask 使用 `contain`，不再預留縮小比例
- 產出 WebP 透明裝飾版與 1920x1080 大背景版
- 產出 CSS data URI 與外部資產庫模板
- 產出 preview / manifest / audit review flags
