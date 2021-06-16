setup:
	docker pull drupal:8-php7.4-apache
	docker pull composer
	docker run --rm --interactive --tty \
  	--volume $(PWD):/app \
  	composer require oomphinc/composer-installers-extender
	
update:
	docker run --rm --interactive --tty \
  	--volume $(PWD):/app \
  	composer update

install:
	docker run --rm --interactive --tty \
  	--volume $(PWD):/app \
  	composer install

shell:
	docker run --rm --interactive --tty \
  	--volume $(PWD):/app \
		--entrypoint=bash \
  	composer
