#!/usr/bin/env bash

cd /host-machine/.hypress/htdocs/wp
if ! $(wp core is-installed --allow-root); then
  wp core install --admin_user=hypress --admin_password=hypress --url=${hypress_slug}.localhost --title=${hypress_slug} --admin_email=root@${hypress_slug}.localhost --allow-root
fi


if [ "theme" = $hypress_type ]; then
    cd /host-machine
    ln -s ../../../../../src ./.hypress/htdocs/wp/wp-content/themes/$hypress_slug

    cd /host-machine/.hypress/htdocs/wp
    wp theme activate $hypress_slug --allow-root
fi

if [ "plugin" = $hypress_type ]; then
    cd /host-machine
    ln -s ../../../../../src ./.hypress/htdocs/wp/wp-content/plugins/$hypress_slug

    cd /host-machine/.hypress/htdocs/wp
    wp plugin activate $hypress_slug --allow-root
fi

if (wp theme is-installed twentynineteen --allow-root); then
  wp theme uninstall twentynineteen --allow-root
fi
if (wp theme is-installed twentyseventeen --allow-root); then
  wp theme uninstall twentyseventeen --allow-root
fi
if (wp theme is-installed twentysixteen --allow-root); then
  wp theme uninstall twentysixteen --allow-root
fi
if (wp plugin is-installed hello --allow-root); then
  wp plugin uninstall hello --allow-root
fi
if (wp plugin is-installed akismet --allow-root); then
  wp plugin uninstall akismet --allow-root
fi
if (wp post exists 1 --allow-root); then
  wp post delete 1 --force --allow-root
fi
if (wp post exists 2 --allow-root); then
  wp post delete 2 --force --allow-root
fi