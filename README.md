# WAFO Design Asset Library

話佛牌網站素材庫。這個 repo 是 GitHub Pages 靜態資產庫，主要給 BVSHOP、首頁區塊、分類入口、Banner、BLOG 與商品頁使用。

README 只保留使用流程；完整圖案請從 `preview/`、`manifest/` 與 `demo/` 查找。

## Tree

```text
assets/svg/                 SVG 512 tight, currentColor / fixed gold
assets/png512/              512x512 transparent PNG
assets/webp-transparent/    transparent WebP decoration
assets/bg1920/              1920x1080 WebP background
css/                        data URI CSS and external host template
demo/                       HTML demo
manifest/                   asset index and audit files
preview/                    contact sheets and category preview
docs/                       setup notes
```

## Main workflow

```text
1. 先看 preview/all_categories_preview_v2_clean.jpg
2. 再看 preview/preview_[category].jpg
3. 記下分類與序號
4. 到 manifest/wafo_design_asset_manifest_v2_clean.csv 查 asset_id
5. 到 manifest/css_class_index_v2_clean.csv 查 css_class
6. 依用途選 svg、png、webp background 或 CSS class
```

## Category folders

```text
00_wafo_core
01_yantra
02_deity_guardian
03_amulet_type
04_thai_culture
05_wish_guide
06_trust_source
07_blog_knowledge
08_thai_ornament
09_frame_card
10_divider
11_corner
12_mini_corner
13_roof_gable
14_reference_extracted
15_wafo_simple_icon
15_wafo_simple_icon_gold
```

## V2 asset path rules

```text
SVG:              assets/svg/[category]/[asset_id].svg
PNG 512:          assets/png512/[category]/[asset_id].png
Transparent WebP: assets/webp-transparent/[category]/[asset_id].webp
Background WebP:  assets/bg1920/[category]/[asset_id]-bg1920.webp
Category CSS:     css/wafo-assets-v2-clean-data-uri-[category].css
```

Manifest path mapping:

```text
01_clean_png_512_transparent/        => assets/png512/
02_svg_512_tight_currentColor/       => assets/svg/
03_webp_original_transparent_q86/    => assets/webp-transparent/
04_webp_background_1920x1080/        => assets/bg1920/
```

## WAFO Simple Icon Expansion V1

新增 `15_wafo_simple_icon` 簡化 2D 圖示擴充包，主要用於 BVSHOP 商品頁、分類導購、功能圖示、BLOG 小圖示與可變色 icon UI。

規格：

```text
數量：98 icons
主色：#B88A44
SVG 母版：currentColor
PNG：512x512 transparent
風格：black / gold simple 2D line icon
用途：佛牌本體、法會供奉、商品配件、符咒符管、動物護符、天神護法
```

新增路徑：

```text
assets/svg/15_wafo_simple_icon/          currentColor SVG master
assets/svg/15_wafo_simple_icon_gold/     fixed WAFO gold SVG
assets/png512/15_wafo_simple_icon/       black transparent PNG 512
assets/png512/15_wafo_simple_icon_gold/  gold transparent PNG 512
css/wafo-simple-icons-v1.css             CSS mask classes
demo/wafo_simple_icon_demo.html          demo page
manifest/wafo_simple_icon_manifest_v1.csv
preview/preview_15_wafo_simple_icon.jpg
README_15_wafo_simple_icon.md
```

Preview / manifest / demo：

```text
https://bertwang.github.io/wafo-assets/preview/preview_15_wafo_simple_icon.jpg
https://bertwang.github.io/wafo-assets/manifest/wafo_simple_icon_manifest_v1.csv
https://bertwang.github.io/wafo-assets/demo/wafo_simple_icon_demo.html
```

Direct SVG usage：

```html
<img src="https://bertwang.github.io/wafo-assets/assets/svg/15_wafo_simple_icon_gold/wafo-15-simple-001.svg" alt="WAFO simple icon" style="width:72px;height:72px;display:block;">
```

Direct PNG usage：

```html
<img src="https://bertwang.github.io/wafo-assets/assets/png512/15_wafo_simple_icon_gold/wafo-15-simple-001.png" alt="WAFO simple icon" style="width:96px;height:96px;display:block;">
```

CSS mask usage：

```html
<link rel="stylesheet" href="https://bertwang.github.io/wafo-assets/css/wafo-simple-icons-v1.css">
<span class="wafo-simple-icon wafo-simple-icon--001 is-lg" style="color:#B88A44;"></span>
```

BVSHOP block test：

```html
<link rel="stylesheet" href="https://bertwang.github.io/wafo-assets/css/wafo-simple-icons-v1.css">
<div style="padding:24px;background:#FFF8EC;border-radius:20px;text-align:center;">
  <span class="wafo-simple-icon wafo-simple-icon--001 is-xl" style="color:#B88A44;"></span>
  <div style="margin-top:12px;color:#37200D;font-size:18px;font-weight:700;">WAFO simple icon test</div>
</div>
```

Available simple icon size classes:

```text
is-sm = 48px
is-md = 64px
is-lg = 96px
is-xl = 128px
```

## GitHub Pages base

```text
https://bertwang.github.io/wafo-assets
```

## Direct image usage

SVG image:

```html
<img src="https://bertwang.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg" alt="WAFO asset" style="width:72px;height:72px;display:block;">
```

PNG image:

```html
<img src="https://bertwang.github.io/wafo-assets/assets/png512/00_wafo_core/wafo-00-wafo_core-001.png" alt="WAFO asset" style="width:96px;height:96px;display:block;">
```

## Background image usage

Background image must have height, min-height, padding, or content. If the div is empty and has no height, the image will not be visible.

```html
<div style="min-height:260px;background-image:linear-gradient(rgba(255,248,236,.82),rgba(255,248,236,.82)),url('https://bertwang.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-08-thai_ornament-001-bg1920.webp');background-size:cover;background-position:center;background-repeat:no-repeat;border-radius:24px;">
</div>
```

## CSS class usage

BVSHOP has been tested with external category CSS by link tag. Use category CSS first, not ALL CSS.

Load one category CSS:

```html
<link rel="stylesheet" href="https://bertwang.github.io/wafo-assets/css/wafo-assets-v2-clean-data-uri-00_wafo_core.css">
```

Apply one icon class:

```html
<span class="wafo-asset is-lg wafo-asset--00-wafo_core-001" style="color:#B88A44;"></span>
```

Full BVSHOP test block:

```html
<link rel="stylesheet" href="https://bertwang.github.io/wafo-assets/css/wafo-assets-v2-clean-data-uri-00_wafo_core.css">
<div style="padding:24px;background:#FFF8EC;border-radius:20px;text-align:center;">
  <span class="wafo-asset is-xl wafo-asset--00-wafo_core-001" style="color:#B88A44;"></span>
  <div style="margin-top:12px;color:#37200D;font-size:18px;font-weight:700;">WAFO asset test</div>
</div>
```

Available size classes:

```text
is-sm = 48px
is-md = 64px
is-lg = 96px
is-xl = 128px
```

Color is controlled by CSS color when using the mask class.

## BVSHOP notes

BVSHOP usage priority:

```text
1. img source for SVG / PNG
2. inline background image for WebP background
3. category CSS only when color-changing icon is needed
4. simple icon UI 可優先用 css/wafo-simple-icons-v1.css
```

The ALL CSS file is large. Prefer category CSS, simple icon CSS, or direct image URL.

## Recommended selection

```text
Small icons:       01, 03, 05, 06, 07, 15
Category cards:    03, 05, 06, 08, 09, 15
Backgrounds:       08, 09, 13
Dividers:          10, 11, 12
Internal review:   14
Simple UI icons:   15_wafo_simple_icon
```

## Self-check

Checked after upload:

```text
assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg
preview/all_categories_preview_v2_clean.jpg
assets/bg1920/08_thai_ornament/wafo-08_thai_ornament-001-bg1920.webp
manifest/wafo_design_asset_manifest_v2_clean.csv
css/wafo-assets-v2-clean-data-uri-00_wafo_core.css
assets/svg/15_wafo_simple_icon_gold/wafo-15-simple-001.svg
assets/png512/15_wafo_simple_icon_gold/wafo-15-simple-001.png
css/wafo-simple-icons-v1.css
manifest/wafo_simple_icon_manifest_v1.csv
preview/preview_15_wafo_simple_icon.jpg
demo/wafo_simple_icon_demo.html
```

Result:

```text
SVG readable
Preview readable
Background WebP readable
Manifest readable
Category CSS readable
Simple icon CSS readable
Simple icon demo readable
BVSHOP external CSS link tested
```
