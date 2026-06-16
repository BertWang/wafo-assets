# GitHub Pages 架設流程｜WAFO Assets

## 1. 建立 Repository

建議 repo 名稱：

```text
wafo-assets
```

建議設為 Public，方便 BVSHOP 前台讀取素材。

## 2. 上傳檔案

把本資料夾內所有檔案上傳到 repo 根目錄：

```text
.nojekyll
index.html
README.md
assets/
css/
demo/
manifest/
preview/
```

## 3. 開啟 GitHub Pages

到 repo：

```text
Settings → Pages → Build and deployment
```

設定：

```text
Source: Deploy from a branch
Branch: main
Folder: /root
```

儲存後等 1–3 分鐘。

## 4. 取得資產網址

格式：

```text
https://你的帳號.github.io/wafo-assets/assets/svg/分類資料夾/檔名.svg
```

## 5. BVSHOP 套用

背景圖範例：

```html
<div style="background-image:linear-gradient(rgba(255,248,236,.82),rgba(255,248,236,.82)),url('https://你的帳號.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-bg-08_thai_ornament-001.webp');background-size:cover;background-position:center;">
  內容
</div>
```

SVG 圖示範例：

```html
<img src="https://你的帳號.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg" alt="WAFO icon" style="width:72px;height:72px;display:block;">
```

