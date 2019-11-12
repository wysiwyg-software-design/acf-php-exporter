# ACF PHP Exporter
![Version](https://img.shields.io/badge/version-v0.1.3-violet.svg)
![Last commit](https://img.shields.io/github/last-commit/hypress/project-skeleton.svg?style=flat)
![Build status](https://api.travis-ci.org/hypress/project-skeleton.svg?branch=develop)
![WordPress v5.2.4](https://img.shields.io/badge/wordpress-v5.2.4-blue.svg)

A very basic project skeleton for hypress projects. The main goal is to keep as much as
dependencies away from the host machine.

The base project skeleton for [hypress] driven WordPress projects.  

This skeleton can be generated with the [yeoman hypress generator][generator-hypress].

## Requirements

### Vagrant
1. [VirtualBox](https://www.virtualbox.org/)
2. [Vagrant](https://www.vagrantup.com/)
3. [vagrant-hostmanager](https://github.com/devopsgroup-io/vagrant-hostmanager)

### Docker
1. [Docker](https://docker.com)
2. [Docker Compose](https://docs.docker.com/compose/install/)

## Install dependencies with homebrew (macOS)
Run

```bash
brew install cask
brew cask install virtualbox vagrant
vagrant plugin install vagrant-hostmanager
```

## Getting started
You need a copy of all project files. Download it via github or just use the
[yeoman hypress generator][generator-hypress].

To bring your development stack up, just start the vagrant box.

```bash
vagrant up
```


If you are using Docker, run
```bash
docker-compose up
```

| Endpoint              | URL                                   |
|---------              | ---                                   |
| Frontend              | http://acf-php-exporter.local                  |
| Backend               | http://acf-php-exporter.local/wp-admin         |
| phpMyAdmin            | http://acf-php-exporter.local/phpmyadmin       |
|                       |                                       |
| **Docker** Frontend   | http://acf-php-exporter.localhost              |
| **Docker** Backend    | http://acf-php-exporter.localhost/wp-admin     |
| **Docker** phpMyAdmin | http://acf-php-exporter.localhost/phpmyadmin   |

| Credential            | Value                                 |
|-----------            | -----                                 |
| MySQL user            | `hypress`                             |
| MySQL password        | `hypress`                             |
| MySQL database        | `hypress`                             |
| WordPress user        | `hypress`                             |
| WordPress password    | `hypress`                             |

## Enable local https (Vagrant only)
To get local https, you can utilize [mkcert]. Follow the link for installation instructions.

After installing mkcert and creating a local CA create a certificate for hypress.

```bash
cd .hypress/
mkcert acf-php-exporter.local
```

If you ran `vagrant up` already, you need to provision the box again.

```bash
vagrant provision
```

## Plugin development
If you want to use this setup for WordPress plugin development, change the
`hypress_type` variable in `./.hypress/ansible/settings.yml` from `theme`
to `plugin`.

## Bundle your theme or Plugin
To create a production ready release, just run

```bash
npm run bundle
```
You'll find a ready to use bundle in `./dist`.

## Contributing
This projects is open for contributions.

[hypress]: https://github.com/hypress
[generator-hypress]: https://github.com/hypress/generator-hypress
[mkcert]: https://github.com/FiloSottile/mkcert
