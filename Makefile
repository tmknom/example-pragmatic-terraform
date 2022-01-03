SHELL := /bin/bash -eu -o pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:
.DEFAULT_GOAL := help

PROJECT_ROOT := $$(git rev-parse --show-toplevel)
INTERNAL_PATH := $(PROJECT_ROOT)/internal

.PHONY: setup
setup: ## setup tf files
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/05/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/06/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/07/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/08/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/09/9.3/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/09/9.4/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/10/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/11/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/12/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/13/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/14/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/15/internal_versions.tf
	cp $(INTERNAL_PATH)/versions.tf $(PROJECT_ROOT)/16/internal_versions.tf
	cp $(INTERNAL_PATH)/override_06.tf $(PROJECT_ROOT)/06/internal_override.tf
	cp $(INTERNAL_PATH)/s3.tf $(PROJECT_ROOT)/08/internal_s3.tf
	cp $(INTERNAL_PATH)/vpc_without_nat.tf $(PROJECT_ROOT)/08/internal_vpc.tf
	cp $(INTERNAL_PATH)/override_08.tf $(PROJECT_ROOT)/08/internal_override.tf
	cp $(INTERNAL_PATH)/tweak_08.tf $(PROJECT_ROOT)/08/internal_tweak.tf
	cp $(INTERNAL_PATH)/vpc_with_nat.tf $(PROJECT_ROOT)/09/9.3/internal_vpc.tf
	cp $(INTERNAL_PATH)/lb.tf $(PROJECT_ROOT)/09/9.3/internal_lb.tf
	cp $(INTERNAL_PATH)/tweak_09.tf $(PROJECT_ROOT)/09/9.3/internal_tweak.tf
	cp $(INTERNAL_PATH)/vpc_with_nat.tf $(PROJECT_ROOT)/10/internal_vpc.tf
	cp $(INTERNAL_PATH)/tweak_10.tf $(PROJECT_ROOT)/10/internal_tweak.tf
	cp $(INTERNAL_PATH)/vpc_without_nat.tf $(PROJECT_ROOT)/13/internal_vpc.tf
	cp $(INTERNAL_PATH)/tweak_13.tf $(PROJECT_ROOT)/13/internal_tweak.tf
	cp $(INTERNAL_PATH)/override_13.tf $(PROJECT_ROOT)/13/internal_override.tf
	cp $(INTERNAL_PATH)/vpc_without_nat.tf $(PROJECT_ROOT)/14/internal_vpc.tf
	cp $(INTERNAL_PATH)/lb.tf $(PROJECT_ROOT)/14/internal_lb.tf
	cp $(INTERNAL_PATH)/tweak_14.tf $(PROJECT_ROOT)/14/internal_tweak.tf
	cp $(INTERNAL_PATH)/override_14.tf $(PROJECT_ROOT)/14/internal_override.tf
	cp $(INTERNAL_PATH)/vpc_with_nat.tf $(PROJECT_ROOT)/15/internal_vpc.tf
	cp $(INTERNAL_PATH)/override_15.tf $(PROJECT_ROOT)/15/internal_override.tf
	cp $(INTERNAL_PATH)/tweak_16.tf $(PROJECT_ROOT)/16/internal_tweak.tf
	cp $(INTERNAL_PATH)/override_16.tf $(PROJECT_ROOT)/16/internal_override.tf

.PHONY: clean
clean: ## clean
	find . -name '*.terraform\.lock*' | xargs -I {} rm -rf {}
	find . -name '*.terraform' | xargs -I {} rm -rf {}
	find . -name '*.tfstate*' | xargs -I {} rm -rf {}
	find . -name 'internal_*.tf' | xargs -I {} rm -rf {}

.PHONY: fmt
fmt: ## format code
	terraform fmt -recursive

.PHONY: help
help: ## show help
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
