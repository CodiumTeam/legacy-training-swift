IMAGE=swift:latest

.PHONY: docker-build
docker-build:
	docker run --rm -it -v `pwd`:/code -w /code $(IMAGE) swift build

.PHONY: docker-test
docker-test:
	docker run --rm -it -v `pwd`:/code -w /code $(IMAGE) swift test

.PHONY: docker-shell
docker-shell:
	docker run --rm -it -v `pwd`:/code -w /code $(IMAGE)

.PHONY: docker-clean
docker-clean:
	docker run --rm -it -v `pwd`:/code -w /code $(IMAGE) rm -rf .build