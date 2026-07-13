# Weijie Zhou — Academic Website

This repository contains the source for Weijie Zhou's academic website, built with [Quarto](https://quarto.org/).

## Local preview

```bash
./preview.sh
```

## Update the website

Edit `index.qmd`, preview the change locally, then commit and push it to `main`. The repository includes a GitHub Actions workflow for publishing updates to GitHub Pages.

To rebuild and deploy the current version directly to Cloudflare Pages:

```bash
./deploy.sh
```

## Content

The website is intentionally a single page. Edit `index.qmd` to update the profile, education, research interests, or projects.

## Cloudflare Pages settings

- Production branch: `gh-pages`
- Framework preset: `None`
- Build command: leave empty
- Build output directory: `.`
