PROJ_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# Configuration of extension
EXT_NAME=datasketches
EXT_CONFIG=${PROJ_DIR}extension_config.cmake

DUCKDB_EXPLICIT_VERSION ?= v2.0.1
EXT_FLAGS += -DDUCKDB_EXPLICIT_VERSION=$(DUCKDB_EXPLICIT_VERSION)

# Include the Makefile from extension-ci-tools
include extension-ci-tools/makefiles/duckdb_extension.Makefile
