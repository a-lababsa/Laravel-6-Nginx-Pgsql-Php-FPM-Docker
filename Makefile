PHP := php

install: build up init composer-install node-install

help:
	@echo 'Youhou'

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

.PHONY: composer-update
composer-update:
	@docker-compose exec $(PHP) composer update --prefer-dist

.PHONY: composer-install
composer-install:
	@docker-compose exec $(PHP) composer install --prefer-dist

.PHONY: node-install
node-install:
	@docker-compose run --rm node yarn install

asset:
	@docker-compose run node yarn run assets

node:
	@docker-compose run node

build:
	$(info Make: Building images.)
	docker-compose build

down:
	docker-compose down

init:
	@sh ./locale_parameters.sh

