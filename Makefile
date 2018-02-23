MKDOCS_AVAILABLE := $(shell command -v mkdocs 2> /dev/null)

build: dependencies
	@mkdocs build

start: dependencies
	@mkdocs serve

install:
	pip install mkdocs mkdocs-material

dependencies:
ifndef MKDOCS_AVAILABLE
	$(error "mkdocs is not available. Use 'make install' to install dependencies.")
endif
