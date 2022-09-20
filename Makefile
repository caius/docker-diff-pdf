DIFF_PDF_VERSION=0.5
IMAGE_VERSION=0

.PHONY: docker-build
docker-build:
	DOCKER_BUILDKIT=1 docker build \
		--tag ghcr.io/caius/diff-pdf:${DIFF_PDF_VERSION}_${IMAGE_VERSION} \
		--build-arg DOCKER_INLINE_CACHE=1 \
		.
