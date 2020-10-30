HUB=ghcr.io/querycap docker.io/querycap

gen: install
	HUB="$(HUB)" go run github.com/querycap/ci-infra/cmd/imagetools

install:
	go get github.com/querycap/ci-infra/cmd/imagetools@master
