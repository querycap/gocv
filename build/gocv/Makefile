VERSION=$(shell cat .version)
TAG ?= $(VERSION)
NAME ?= gocv

prepare:
	@echo ::set-output name=image::$(NAME):$(TAG)
	@echo ::set-output name=build_args::VERSION=$(VERSION)

test:
	docker buildx build \
		--load \
		--progress plain \
		--platform=linux/arm64 \
		--file=Dockerfile.gocv \
		--tag=querycap/gocv:$(VERSION)-arm64 \
		--build-arg=VERSION=$(VERSION)	\
    	.