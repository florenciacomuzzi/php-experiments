.PHONY: test watch down background test-build

test:
	docker compose run --build --rm server ./vendor/bin/phpunit tests/HelloWorldTest.php

test-build:
	docker build -t php-docker-image-test --progress plain --no-cache --target test .

watch:
	docker compose watch

down:
	docker compose down

background:
	docker compose up -d
