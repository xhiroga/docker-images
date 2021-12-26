DEFAULTS_PLIST = defaults-plist

.PHONY: $(DEFAULTS_PLIST)
$(DEFAULTS_PLIST):
	docker build ./$(DEFAULTS_PLIST) -t ghcr.io/xhiroga/$(DEFAULTS_PLIST):`git rev-parse HEAD` -t ghcr.io/xhiroga/$(DEFAULTS_PLIST):latest
