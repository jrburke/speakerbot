
DOCKER_FROM = Dockerfile.arm.in
ifeq ($(PROCESSOR_ARCHITECTURE),x86)
	DOCKER_FROM = Dockerfile.x86.in
endif

DOCKER_FROM = Dockerfile.x86.in
UNAME_M := $(shell uname -m)
ifeq ($(UNAME_M),armv7l)
	DOCKER_FROM = Dockerfile.arm.in
endif

Dockerfile: $(DOCKER_FROM) app.docker
	cat $(DOCKER_FROM) app.docker > Dockerfile

build: Dockerfile
	docker build -t speakerbot .

run:
	docker run -it speakerbot
