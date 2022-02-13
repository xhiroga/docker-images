ANSIBLE = ghcr.io/xhiroga/ansible
DEFAULTS_PLUTIL = ghcr.io/xhiroga/defaults-plutil
DQL = ghcr.io/xhiroga/dql
MANPAGES_JA = ghcr.io/xhiroga/manpages-ja

.PHONY: $(ANSIBLE) $(DEFAULTS_PLUTIL) $(DQL) $(MANPAGES_JA);

$(ANSIBLE):
	docker build ./ansible -t $@:$$(git rev-parse HEAD) -t $@:latest

$(DEFAULTS_PLUTIL):
	docker build ./defaults-plutil -t $@:$$(git rev-parse HEAD) -t $@:latest

$(DQL):
	docker build ./dql -t $@:$$(git rev-parse HEAD) -t $@:latest

$(MANPAGES_JA):
	docker build ./manpages-ja -t $@:$$(git rev-parse HEAD) -t $@:latest
