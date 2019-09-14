IMAGE_TAG ?= "otaviof/go-dev-sh:latest"
SCRIPT_NAME ?= "go-dev-sh"
SCRIPT_INSTALL_DIR ?= "/usr/local/bin/"

default: build

build:
	docker build --tag=$(IMAGE_TAG) .

install:
	install -m 755 $(SCRIPT_NAME) $(SCRIPT_INSTALL_DIR)