# Image URL to use all building/pushing image targets
IMG_BASE ?= quay.io/sustainable_computing_io/kepler-e2e-base:latest
IMG ?= quay.io/sustainable_computing_io/kepler-e2e:latest
CTR_CMD :=$(or $(shell which podman 2>/dev/null), $(shell which docker 2>/dev/null))


# make base container image
build-base: build/Dockerfile
	${CTR_CMD} build -f build/Dockerfile.base -t ${IMG_BASE} .

# make playbook container image
build-playbook: build/Dockerfile
	${CTR_CMD} build -f build/Dockerfile -t ${IMG} .

# make push
push:
	${CTR_CMD} push ${IMG}
