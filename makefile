DEFAULTS_PLUTIL = defaults-plutil
DQL = dql

.PHONY: $(DEFAULTS_PLUTIL) $(DQL);

$(DEFAULTS_PLUTIL):
	docker build ./$(DEFAULTS_PLUTIL) -t ghcr.io/xhiroga/$(DEFAULTS_PLUTIL):`git rev-parse HEAD` -t ghcr.io/xhiroga/$(DEFAULTS_PLUTIL):latest

$(DQL):
	docker build ./$(DQL) -t ghcr.io/xhiroga/$(DQL):`git rev-parse HEAD` -t ghcr.io/xhiroga/$(DQL):latest
