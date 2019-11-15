#!/usr/bin/env bash
npm run  build
mkdir -p ./dist
cp -R ./src/* ./dist
rm -R ./dist/js
rm -R ./dist/scss
rm ./dist/public.js
rm ./dist/private.js
rm ./dist/style.css
rm ./dist/style-private.css
rm -R ./dist/vendor
