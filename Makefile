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
	$(info Make: Building images.)
	docker-compose build

down:
	docker-compose down

init:
	@sh ./locale_parameters.sh

