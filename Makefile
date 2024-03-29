export DOCKER_BUILDKIT=1

export LOGLEVEL?=20
export HOST?=localhost
export DOCKER_NETWORK_NAME?=traefiklab

export VERSION?=1.0.0
export TZ?=Asia/Hong_Kong

export USERNAME?=$(shell whoami)
export USER_ID?=$(shell id -u)
export GROUP_ID?=$(shell id -g)

network:
	docker network create ${DOCKER_NETWORK_NAME}

build:
	docker-compose build

start:
	docker-compose -f docker-compose.yml -f docker-compose.labels.yml up -d --no-build

clean:
	docker-compose down --remove-orphans
