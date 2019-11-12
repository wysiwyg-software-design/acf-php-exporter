#!/usr/bin/env bash
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

cd /host-machine
composer install
npm install
npm rebuild node-sass
npm run build