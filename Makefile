DOCKER_USERNAME ?= tp
APPLICATION_NAME ?= php-apache-web
NS ?= test
VERSION ?= latest
IMAGE_NAME ?= php-apache-web
CONTAINER_NAME ?= test

build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME} .

run:
        docker run -d --rm --name $(APPLICATION_NAME) $(NS)/$(IMAGE_NAME):$(latest)