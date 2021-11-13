IMAGE_NAME := uvicorn-bug-test
USER_NAME := shunpoco

.PHONY: build
build:
	for tag in v0134 v0140 v0150 ; do docker build -t ${IMAGE_NAME}:$$tag $$tag/. ; done

.PHONY: tag
tag:
	for tag in v0134 v0140 v0150 ; do docker tag ${IMAGE_NAME}:$$tag ${USER_NAME}/${IMAGE_NAME}:$$tag ; done

.PHONY: push
push:
	for tag in v0134 v0140 v0150 ; do 	docker push ${USER_NAME}/${IMAGE_NAME}:$$tag ; done
