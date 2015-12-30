DOCKER_REPO=lc0/docker-shiny-server
TAG=latest


build:
	docker build -t ${DOCKER_REPO}:${TAG} .


run:
	docker run -i -t -p 3838:3838 \
		${DOCKER_REPO}

push:
	docker push ${DOCKER_REPO}:${TAG}

.PHONY: build run push
