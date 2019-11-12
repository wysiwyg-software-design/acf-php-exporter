# ACF PHP Exporter WordPress Plugin
![Version](https://img.shields.io/badge/version-v0.0.1-violet.svg)
![Last commit](https://img.shields.io/github/last-commit/wysiwyg-software-design/acf-php-exporter.svg?style=flat)
![Build status](https://api.travis-ci.org/wysiwyg-software-design/acf-php-exportersvg?branch=develop)
![WordPress v5.2.4](https://img.shields.io/badge/wordpress-v5.2.4-blue.svg)

This plugins exports ACF configurations in PHP files on the fly for use in production environments.

The plugin is looking for an `acf-php` directory within your theme directory. If no directory is found, the plugin
does nothing.

Please note: You need to set your WP instance into debug mode to use and see

## Usage
### Composer
This plugin is available as composer package. To install it by composer use

```bash
composer require wy/acf-php-exporter
```

## Cotributing
Please check [Development Guidelines](./docs/DEVELOPMENT.md)
