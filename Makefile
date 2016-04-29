NAME = mgor/ubuntu-pkg-builder
HOSTNAME = pkg-builder

.PHONY = all build run

all: build run

build:
	docker build -t $(NAME) .

run:
	docker run --rm --name $(HOSTNAME) --hostname $(HOSTNAME) -it $(NAME)
