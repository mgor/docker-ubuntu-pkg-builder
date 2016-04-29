NAME = mgor/ubuntu-pkg-builder
CONTAINER_NAME = pkg-builder

.PHONY = all build run

all: build run

build:
	docker build -t $(NAME) .

run:
	docker-compose run --rm $(CONTAINER_NAME) bash
