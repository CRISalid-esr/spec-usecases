help:
	@echo "Generate HTML from a Bikeshed source document:"
	@echo "  make dist    Generate HTML in dist directory"

PAGES = index.html

dist: $(PAGES)

%.html : %.bs
	curl -s https://api.csswg.org/bikeshed/ -F file=@$< -F force=1 > $@

clean:
	rm -f $(PAGES)
