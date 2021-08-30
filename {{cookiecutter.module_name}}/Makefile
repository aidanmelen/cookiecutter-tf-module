SHELL := /bin/bash

.PHONY: all install lint
all: install lint

.PHONY: install
install:
	terraform init
	cd examples/basic && terraform init && cd ../..
	cd examples/complete && terraform init && cd ../..
	git init
	git add -A
	pre-commit install

.PHONY: lint
lint:
	pre-commit run

.PHONY: test
test: test-basic test-complete

.PHONY: test-basic
test-basic:
	go get github.com/gruntwork-io/terratest/modules/terraform
	go test test/terraform_basic_test.go

.PHONY: test-complete
test-complete:
	go get github.com/gruntwork-io/terratest/modules/terraform
	go test test/terraform_complete_test.go
