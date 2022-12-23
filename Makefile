.ONESHELL:
export SHELL:=/bin/bash

# Test
tests:
	# docker-compose -f docker-compose.yaml rm -f -v
	docker-compose -f docker-compose.yaml up --build --abort-on-container-exit --remove-orphans
.PHONY: tests
