NAME = mgor/ubuntu-pkg-builder
HOSTNAME = pkg-builder
TAG := $(shell git rev-parse --abbrev-ref HEAD)

ifeq ($(TAG),master)
	TAG := "latest"
endif

.PHONY = all build run

all: build run

build:
	docker build -t $(NAME):$(TAG) .

run:
	docker run --rm --name $(HOSTNAME) --hostname $(HOSTNAME) -it $(NAME)
