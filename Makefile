.PHONY: all

all: ghcr.io/xhiroga/ansible ghcr.io/xhiroga/defaults-plutil ghcr.io/xhiroga/dql ghcr.io/xhiroga/manpages-ja ghcr.io/xhiroga/review2.5-ssh

ghcr.io/xhiroga/ansible:
	TARGET=ansible ./docker-build-push

ghcr.io/xhiroga/defaults-plutil:
	TARGET=defaults-plutil ./docker-build-push

ghcr.io/xhiroga/dql:
	TARGET=dql ./docker-build-push

ghcr.io/xhiroga/manpages-ja:
	TARGET=manpages-ja ./docker-build-push

ghcr.io/xhiroga/review2.5-ssh:
	TARGET=review2.5-ssh ./docker-build-push
