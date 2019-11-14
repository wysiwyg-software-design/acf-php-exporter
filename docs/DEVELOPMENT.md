## Requirements
### Docker
1. [Docker](https://docker.com)
2. [Docker Compose](https://docs.docker.com/compose/install/)

### Getting started
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


## Bundle your plugin
To create a production ready release, just run

```bash
npm run bundle
```
You'll find a ready to use bundle in `./dist`.

## Version bump
Following files contain version information:

- `src/acf-php-exporter.php`
- `composer.json`
- `package.json`
- `README.md`

## Contributing
This projects is open for contributions.

[hypress]: https://github.com/hypress
[generator-hypress]: https://github.com/hypress/generator-hypress
[mkcert]: https://github.com/FiloSottile/mkcert