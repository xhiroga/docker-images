DEFAULTS_PLUTIL = defaults-plutil
DQL = dql
MANPAGES_JA = manpages-ja

.PHONY: $(DEFAULTS_PLUTIL) $(DQL);

$(DEFAULTS_PLUTIL):
	docker build ./$(DEFAULTS_PLUTIL) -t ghcr.io/xhiroga/$(DEFAULTS_PLUTIL):`git rev-parse HEAD` -t ghcr.io/xhiroga/$(DEFAULTS_PLUTIL):latest

$(DQL):
	docker build ./$(DQL) -t ghcr.io/xhiroga/$(DQL):`git rev-parse HEAD` -t ghcr.io/xhiroga/$(DQL):latest

$(MANPAGES_JA)
	docker build ./$(MANPAGES_JA) -t ghcr.io/xhiroga/$(MANPAGES_JA):`git rev-parse HEAD` -t ghcr.io/xhiroga/$(MANPAGES_JA):latest
