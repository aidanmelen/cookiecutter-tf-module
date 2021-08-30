SHELL := /bin/bash

.PHONY: all init lint
all: init lint

.PHONY: init
init:
	git init
	git add -A
	pre-commit install

.PHONY: lint
lint:
	pre-commit run
