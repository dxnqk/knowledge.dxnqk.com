---
date: "2025-06-03T18:53:56+02:00"
draft: true
title: "Makefile"
---

## Description

## Options

| Option | Description |
| ------ | ----------- |
|        |             |

## Commands

| Command | Description |
| ------- | ----------- |
|         |             |

## Examples

Makefile for Go projects

```make
.DEFAULT_GOAL := run

AIR_PACKAGE_TO_BUILD = ./cmd/main
AIR_BIN = ./tmp/main

TAILWINDCSS_INPUT_FILE = ./web/input.css
TAILWINDCSS_OUTPUT_FILE = ./web/static/style.css

DOCKER_IMAGE = $(notdir $(shell pwd))
DOCKER_CONTAINER_NAME = $(DOCKER_IMAGE)

ifneq (,$(wildcard ./.env))
    include .env
    export
endif

run-air:
	@air \
		--build.cmd "go build -o $(AIR_BIN) $(AIR_PACKAGE_TO_BUILD)" \
		--build.bin "$(AIR_BIN)" \
		--build.delay 100 \
		--build.include_ext "go, html" \
		--build.exclude_dir "tmp" \
		--build.stop_on_error "false" \
		--misc.clean_on_exit false \
		--screen.clear_on_rebuild true \
		--log.main_only true

run-templ:
	@templ \
		generate \
		--proxy="http://127.0.0.1:$(HTTP_PORT)" \
		--open-browser=false \
		--watch

run-tailwind:
	@tailwindcss \
		-i "$(TAILWINDCSS_INPUT_FILE)" \
		-o "$(TAILWINDCSS_OUTPUT_FILE)" \
		--watch

download-htmx:
	@curl -sLo ./web/static/htmx.js https://unpkg.com/htmx.org@1.9.12/dist/htmx.min.js

run:
	@make -j 3 run-tailwind run-templ run-air 

docker-build:
	@docker build -t $(DOCKER_IMAGE) .
	@echo y | docker image prune

docker-rm:
	@docker rm -f $(DOCKER_CONTAINER_NAME) > /dev/null 2> /dev/null || true

docker-run: docker-rm
	@docker run -d \
		--name $(DOCKER_CONTAINER_NAME) \
		--publish 8000:$(HTTP_PORT) \
		--env HTTP_PORT=$(HTTP_PORT) \
		$(DOCKER_IMAGE):latest

run-npm:
	@cd ./website; npm run dev

test:
	@go test -v ./... -count=1

clean:
	@go clean

deps:
	@go mod tidy
```

Makefile for C projects

```make
.DEFAULT_GOAL := run

SOURCE_FILE = main.c
BINARY = main
BIN_DIR_PATH = ./bin

compile:
	@[ -d "${BIN_DIR_PATH}" ] || mkdir ${BIN_DIR_PATH}
	@cc -Wall -lm ${SOURCE_FILE} -o ${BIN_DIR_PATH}/${BINARY}

run: compile
	@${BIN_DIR_PATH}/${BINARY}
```
