PHP := php

.PHONY: install
install: clean build up init /
	cp .env.example .env
	@docker-compose exec $(PHP) composer global require hirak/prestissimo
	$(MAKE) composer-install
	@docker-compose exec $(PHP) php artisan key:generate
	$(MAKE) node-install

clean:
	@sh ./clean.sh

help:
	@echo ""
	@echo "make install          ; install the project"
	@echo "make clean            ; clean project"
	@echo "make up               ; run project"
	@echo "make stop             ; stop project"
	@echo "make build            ; build project"
	@echo "make shell            ; build and start interactive shell in php containers"
	@echo "make composer-install ; run composer-install inside containers"
	@echo "make composer-update  ; run composer-update inside containers"
	@echo "make asset            ; build and install javascript modules"
	@echo "make node-sh          ; build and start interactive shell in node containers"
	@echo "make build            ; run docker-compose build"
	@echo "make down             ; run docker-compose down"
	@echo ""

up:
	@docker-compose up -d nginx

stop:
	@docker-compose stop

restart:
	$(info Make: Restarting containers.)
	@make -s stop
	@make -s up

shell:
	@docker-compose exec php sh

composer-update:
	@docker-compose exec $(PHP) composer update --prefer-dist

composer-install:
	@docker-compose exec $(PHP) composer install --prefer-dist

node-install:
	@docker-compose run --rm node yarn install

asset:
	@docker-compose run --rm node yarn run assets

node-sh:
	@docker-compose run --rm node sh

build:
	docker-compose build

down:
	docker-compose down

init:
	@sh ./locale_parameters.sh

