VERSION=3.4.9
PROJECT_ID=ivynet-containers
PROJECT=gcr.io/${PROJECT_ID}

all: build

build:
	docker build --pull -t ${PROJECT}/zookeeper:${VERSION} .

push: build
	gcloud docker -- push ${PROJECT}/zookeeper:${VERSION}

.PHONY: all build push
