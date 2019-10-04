# Laravel-6-Nginx-Pgsql-Php-FPM-Docker

### Prerequisites

```
docker
docker-compose
makefile
```

### Installing

```
git clone git@github.com:a-lababsa/Laravel-6-Nginx-Pgsql-Php-FPM-Docker.git <projectName>
```

```
cd <projectName>
```

```
make install
```

### Makefile Commands
```
make install          ; install the project
make clean            ; clean project
make up               ; run project
make stop             ; stop project
make build            ; build project
make shell            ; build and start interactive shell in php containers
make composer-install ; run composer-install inside containers
make composer-update  ; run composer-update inside containers
make asset            ; build and install javascript modules
make node-sh          ; build and start interactive shell in node containers
make build            ; run docker-compose build
make down             ; run docker-compose down
```

## Authors

* **Lababsa Alexandre**

[contributors](https://github.com/a-lababsa/Laravel-6-Nginx-Pgsql-Php-FPM-Docker/graphs/contributors)