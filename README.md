# WAFO Design Asset Library

話佛牌網站素材庫。這個 repo 是 GitHub Pages 靜態資產庫，主要給 BVSHOP、首頁區塊、分類入口、Banner、BLOG 與商品頁使用。

README 只保留使用流程；完整圖案請從 preview 與 manifest 內部查找。

## Tree

```text
assets/svg/                 SVG 512 tight, currentColor
assets/png512/              512x512 transparent PNG
assets/webp-transparent/    transparent WebP decoration
assets/bg1920/              1920x1080 WebP background
css/                        data URI CSS and external host template
demo/                       HTML demo
docs/                       setup notes
manifest/                   asset index and audit files
preview/                    contact sheets and category preview
```

## Workflow

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
```

## Path rules

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

## GitHub Pages base

```text
https://bertwang.github.io/wafo-assets
```

## Direct image example

```html
<img src="https://bertwang.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg" alt="WAFO asset" style="width:72px;height:72px;display:block;">
```

## Background image example

Background image must have height, min-height, padding, or content. If the div is empty and has no height, the image will not be visible.

```html
<div style="min-height:260px;background-image:linear-gradient(rgba(255,248,236,.82),rgba(255,248,236,.82)),url('https://bertwang.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-08-thai_ornament-001-bg1920.webp');background-size:cover;background-position:center;background-repeat:no-repeat;border-radius:24px;">
</div>
```

## CSS class usage

Use the category CSS file only for the category you need. Then apply the class from `css_class_index_v2_clean.csv`.

Available size classes:

```text
is-sm = 48px
is-md = 64px
is-lg = 96px
is-xl = 128px
```

Color is controlled by CSS `color` when using the mask class.

## BVSHOP notes

BVSHOP usage priority:

```text
1. img source for SVG / PNG
2. inline background image for WebP background
3. category CSS only when color-changing icon is needed
```

The ALL CSS file is large. Prefer category CSS or direct image URL.

## Recommended selection

```text
Small icons:       01, 03, 05, 06, 07
Category cards:    03, 05, 06, 08, 09
Backgrounds:       08, 09, 13
Dividers:          10, 11, 12
Internal review:   14
```

## Self-check

Checked after upload:

```text
assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg
preview/all_categories_preview_v2_clean.jpg
assets/bg1920/08_thai_ornament/wafo-08-thai_ornament-001-bg1920.webp
manifest/wafo_design_asset_manifest_v2_clean.csv
css/wafo-assets-v2-clean-data-uri-00_wafo_core.css
```

Result:

```text
SVG readable
Preview readable
Background WebP readable
Manifest readable
Category CSS readable
```
