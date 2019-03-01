USER=serverbee
IMAGE=dind-jenkins-agent:latest

.PHONY: build push

default: build

build:
	docker build -t $(USER)/$(IMAGE) .

debug:
	docker run -it $(USER)/$(IMAGE) bash

push:
	docker push $(USER)/$(IMAGE)
