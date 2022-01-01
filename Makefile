SHELL := /bin/bash -eu -o pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:
.DEFAULT_GOAL := help

.PHONY: clean
clean: ## clean
	find . -name '*.terraform\.lock*' | xargs -I {} rm -rf {}
	find . -name '*.terraform' | xargs -I {} rm -rf {}
	find . -name '*.tfstate*' | xargs -I {} rm -rf {}

.PHONY: fmt
fmt: ## format code
	terraform fmt -recursive

.PHONY: help
help: ## show help
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
