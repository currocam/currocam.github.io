.PHONY: help build serve clean dev

help:
	@echo "Hugo Site Makefile"
	@echo ""
	@echo "Available targets:"
	@echo "  make build     - Build the site for production"
	@echo "  make serve     - Serve the site locally (http://localhost:1313)"
	@echo "  make dev       - Serve with drafts and future content enabled"
	@echo "  make clean     - Remove build artifacts"
	@echo "  make help      - Show this help message"

build:
	hugo --minify

serve:
	hugo serve

dev:
	hugo serve --buildDrafts --buildFuture

clean:
	rm -rf resources/
	rm -f .hugo_build.lock
