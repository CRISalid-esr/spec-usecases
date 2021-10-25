help:
	@echo "Generate HTML from a Bikeshed source document:"
	@echo "  make dist    Generate HTML in dist directory"

PAGES = index.html mellon-scenario.html scholarly-scenario.html heritage-scenario.html

dist: $(PAGES)

%.html : %.bs
	curl -s https://api.csswg.org/bikeshed/ -F file=@$< -F force=1 > $@

clean:
	rm -f $(PAGES)
