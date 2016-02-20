
Dockerfile.arm: Dockerfile.arm.in app.docker
	cat Dockerfile.arm.in app.docker > Dockerfile.arm
	cp Dockerfile.arm Dockerfile

Dockerfile.x86: Dockerfile.x86.in app.docker
	cat Dockerfile.x86.in app.docker > Dockerfile.x86
	cp Dockerfile.x86 Dockerfile

build-arm: Dockerfile.arm
	docker build -t speakerbot .

build-x86: Dockerfile.x86
	docker build -t speakerbot .

run:
	docker run -it speakerbot
