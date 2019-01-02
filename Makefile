NAME := 2alab
VERSION := latest
BUILD_ARGS := $(BUILD_ARGS)
.ONESHELL:


all: openjdk-8-springboot openjdk-9-springboot openjdk-11-springboot


openjdk-8-springboot:
	cd src/openjdk/
	cat 8-springboot/Dockerfile > ../../generated/8-springboot/Dockerfile
	cat Dockerfile >> ../../generated/8-springboot/Dockerfile
	cd ../../generated/8-springboot/
	docker build $(BUILD_ARGS) -t $(NAME)/openjdk-8-springboot:$(VERSION) .


openjdk-9-springboot:
	cd src/openjdk/
	cat 9-springboot/Dockerfile > ../../generated/9-springboot/Dockerfile
	cat Dockerfile >> ../../generated/9-springboot/Dockerfile
	cd ../../generated/9-springboot/
	docker build $(BUILD_ARGS) -t $(NAME)/openjdk-9-springboot:$(VERSION) .


openjdk-11-springboot:
	cd src/openjdk/
	cat 11-springboot/Dockerfile > ../../generated/11-springboot/Dockerfile
	cat Dockerfile-cgroups-support >> ../../generated/11-springboot/Dockerfile
	cd ../../generated/11-springboot/
	docker build $(BUILD_ARGS) -t $(NAME)/openjdk-11-springboot:$(VERSION) .
