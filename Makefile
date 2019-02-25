
WDIR := /go/src/github.com/dahernan/tfsample
DIR := ${CURDIR}:${WDIR}

CONTAINER_NAME := tfexample
DOCKER_IMAGE := dahernan/tfexample

dockerbuild:
	docker build -f Dockerfile -t $(DOCKER_IMAGE) .

login:
	docker run -i -v $(DIR) -w $(WDIR) --entrypoint=/bin/bash -t $(DOCKER_IMAGE) --name $(CONTAINER_NAME)

down:
	docker rm -f $(CONTAINER_NAME) 2>/dev/null || true

dockerpush:
	docker push $(DOCKER_IMAGE):latest

PHONY: dockerbuild login down dockerpush