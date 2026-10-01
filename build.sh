#!/bin/sh
# Rebuilds index.html (the installable app) from src/app-body.html.
set -e
cd "$(dirname "$0")"
{
  cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="theme-color" content="#2c6a55">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Digestiv">
<link rel="manifest" href="manifest.webmanifest">
<link rel="icon" href="icon.svg" type="image/svg+xml">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<style>:root{padding-top:env(safe-area-inset-top,0px)}</style>
HEAD
  # title, font links and style go in <head>; the rest in <body>
  sed -n '1,/^<\/style>/p' src/app-body.html
  echo '</head>'
  echo '<body>'
  sed '1,/^<\/style>/d' src/app-body.html
  echo '</body>'
  echo '</html>'
} > index.html
echo "built index.html"
