# WAFO Design Asset Library

話佛牌設計素材庫。此 repo 可直接用 GitHub Pages 當外部靜態資產空間。

## 目錄

```text
assets/svg/                 SVG 512 tight，currentColor
assets/png512/              512x512 clean transparent PNG
assets/webp-transparent/    WebP 透明裝飾素材
assets/bg1920/              1920x1080 大背景 WebP
css/                        CSS data URI 與外部 URL 模板
manifest/                   素材對照表與 audit 檢查表
preview/                    預覽圖
```

## GitHub Pages URL 規則

假設 repo 名稱是 `wafo-assets`，帳號是 `BertWang`：

```text
https://BertWang.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg
https://BertWang.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-bg-08_thai_ornament-001.webp
```

## BVSHOP 使用方向

短期可使用 `css/wafo-assets-v2-clean-data-uri-ALL.css`，不需要圖片主機。
正式站建議使用 `css/wafo-assets-v2-clean-external-host-template.css`，把 `__ASSET_BASE_URL__` 改成 GitHub Pages 根網址。

範例：

```css
--wafo-asset-base: "https://BertWang.github.io/wafo-assets";
```

## 重要

`.nojekyll` 已加入，避免 GitHub Pages 使用 Jekyll 處理靜態檔時造成素材路徑問題。

