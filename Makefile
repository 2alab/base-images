NAME := 2alab
VERSION := latest
BUILD_ARGS := $(BUILD_ARGS)
.ONESHELL:


all: mad-jdk11 openjdk-8-springboot openjdk-9-springboot openjdk-11-springboot



mad-jdk11:
	cd src/mad/
	cat jdk11/Dockerfile > ../../generated/mad-jdk11/Dockerfile
	cat Dockerfile >> ../../generated/mad-jdk11/Dockerfile
	cd ../../generated/mad-jdk11/
	docker build $(BUILD_ARGS) -t $(NAME)/mad-jdk11:$(VERSION) .


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


mongo4-tools:
	cd src/mongo-tools/
	cat 4/Dockerfile > ../../generated/mongo4-tools/Dockerfile
	cd ../../generated/mongo4-tools/
	docker build $(BUILD_ARGS) -t $(NAME)/mongo4-tools:$(VERSION) .
