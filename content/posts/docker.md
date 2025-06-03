---
date: "2025-05-22T18:31:09+02:00"
draft: true
title: "Docker"
---

Docker is an open-source platform that allows you to create, deploy, and run applications inside lightweight, isolated containers. A container packages your application along with all its dependencies, ensuring it runs consistently across different environments. Containers are portable and resource-efficient, as they share the host system's kernel but remain isolated from each other and the underlying infrastructure. You can run a Docker image as a container on any machine with Docker installed, regardless of the underlying operating system.

---

```sh
docker
```

```sh
docker version
```

```sh
docker compose
```

```sh
docker compose -f $DOCKER_COMPOSE_FILE_PATH
```

```sh
docker compose start
```

```sh
docker compose start -d
```

```sh
docker compose stop
```

```sh
docker compose up
```

```sh
docker compose up -d
```

```sh
docker compose up --remove-orphans
```

```sh
docker compose up --no-cache
```

```sh
docker compose down
```

```sh
docker compose logs
```

```sh
docker compose logs -f
```

```sh
docker compose ps
```

```sh
docker compose ps -a
```

```sh
docker compose build --no-cache
```

```sh
docker pull $DOCKER_IMAGE
```

```sh
docker pull $DOCKER_IMAGE:$TARGET
```

```sh
docker run $DOCKER_IMAGE:$TARGET -d
```

```sh
docker run $DOCKER_IMAGE:$TARGET -p $HOST_PORT:$CONTAINER_PORT -d
```

```sh
docker run $DOCKER_IMAGE:$TARGET -n $CONTAINER_NAME -d
```

```sh
docker run $DOCKER_IMAGE:$TARGET -n $CONTAINER_NAME -e $ENV_VAR_NAME=$ENV_VAR_VALUE -d
```

```sh
docker run $DOCKER_IMAGE:$TARGET -n $CONTAINER_NAME -v $HOST_VOLUME_PATH:$CONTAINER_VOLUME_PATH -d
```

```sh
docker run -it $DOCKER_IMAGE:$TARGET /bin/sh
```

```sh
docker run --rm -it $DOCKER_IMAGE:$TARGET /bin/sh
```

```sh
docker ps
```

```sh
docker ps -a
```

```sh
docker ps -a -q
```

```sh
docker networks
```

```sh
docker network ls
```

```sh
docker network ls -a
```

```sh
docker network inspect $CONTAINER_NAME
```

```sh
docker images
```

```sh
docker image ls
```

```sh
docker image ls -a
```

```sh
docker image rm $DOCKER_IMAGE
```

```sh
docker image prune
```

```sh
docker build -t $DOCKER_IAMGE $DIR_PATH
```

```sh
docker build --no-cache -t $DOCKER_IAMGE $DIR_PATH
```

```sh
docker logs
```

```sh
docker exec -it $CONTAINER_NAME /bin/sh
```

```sh
docker container ls
```

```sh
docker save -o $FILE_PATH $DOCKER_IMAGE:$TARGET
```

```sh
docker load --input $FILE_PATH
```

```sh
docker attach $CONTAINER_NAME
```

```sh
docker create $DOCKER_IMAGE:$TARGET
```

```sh
docker create --name $CONTAINER_NAME $DOCKER_IMAGE:$TARGET
```

```sh
docker export $CONTAINER_NAME | tar t
```

## Dockerfile Examples

```docker
ARG GO_VERSION=1.22.4
ARG GO_BINARY=main
ARG ALPINE_VERSION=3.20
ARG PORT=8000

FROM golang:${GO_VERSION}-alpine${ALPINE_VERSION} as builder

RUN apk add gcc musl-dev sqlite

WORKDIR /builder

COPY . .

RUN CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -installsuffix cgo -o ${GO_BINARY} .

FROM alpine:${ALPINE_VERSION}

RUN apk add yt-dlp ffmpeg

COPY --from=builder /builder/${GO_BINARY} /usr/bin

EXPOSE ${PORT}

ENTRYPOINT [ ${GO_BINARY} ]
```

## Docker compose Examples

```yaml
services:
  app:
    build:
      context: .
    tty: true
    depends_on:
      - psql

  psql:
    container_name: postgres-example
    image: postgres:alpine
    restart: always
    environment:
      POSTGRES_USER: ${POSTGRES_USER}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
      POSTGRES_DB: ${POSTGRES_DBNAME}
    networks:
      - example
    ports:
      - ${POSTGRES_PORT}:5432
    volumes:
      - psql-volume:/var/lib/postgresql/data

networks:
  example:
    name: example
    driver: bridge

volumes:
  psql-volume:
```
