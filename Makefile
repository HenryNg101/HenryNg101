IMAGE_NAME=resume-builder

build:
	docker build -t $(IMAGE_NAME) .

generate:
	docker run --rm -v $(PWD):/app $(IMAGE_NAME) \
		bash -c "cd Resume && ./compile.sh"

all: build generate