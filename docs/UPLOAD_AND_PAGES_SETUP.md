# WAFO Assets Upload and GitHub Pages Setup

This repository is used as the public static asset host for WAFO / 話佛牌.

## 1. Upload asset files

Download and unzip the deploy package:

```text
WAFO_GitHub_Pages_Deploy_v1.zip
```

Upload the extracted contents into the repository root.

Expected root structure:

```text
.nojekyll
index.html
README.md
assets/
css/
demo/
manifest/
preview/
docs/
```

## 2. Enable GitHub Pages

Open the repository on GitHub:

```text
https://github.com/BertWang/wafo-assets
```

Go to:

```text
Settings → Pages → Build and deployment
```

Set:

```text
Source: Deploy from a branch
Branch: main
Folder: /(root)
```

Click Save.

## 3. Public URL

After GitHub Pages finishes deploying, the asset root should be:

```text
https://BertWang.github.io/wafo-assets/
```

Example SVG asset URL:

```text
https://BertWang.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg
```

Example WebP background URL:

```text
https://BertWang.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-bg-08_thai_ornament-001.webp
```

## 4. BVSHOP usage

Use direct public URLs inside inline HTML or CSS.

```html
<img src="https://BertWang.github.io/wafo-assets/assets/svg/00_wafo_core/wafo-00-wafo_core-001.svg" alt="WAFO icon" style="width:72px;height:72px;display:block;">
```

```html
<div style="background-image:linear-gradient(rgba(255,248,236,.82),rgba(255,248,236,.82)),url('https://BertWang.github.io/wafo-assets/assets/bg1920/08_thai_ornament/wafo-bg-08_thai_ornament-001.webp');background-size:cover;background-position:center;background-repeat:no-repeat;">
  Content
</div>
```

## 5. Notes

- Keep the repository public for simple BVSHOP front-end loading.
- Do not store private data here.
- `.nojekyll` is included to keep static file paths stable.
