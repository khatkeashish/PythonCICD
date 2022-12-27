.ONESHELL:
export SHELL:=/bin/bash


# Format and lint
format:
	isort --check .
	black --check .
	flake8 python_cicd tests
	mypy .
.PHONY: format

# Local tests
tests:
	chmod +x run_tests.sh
	bash run_tests.sh 
.PHONY: tests

# Docker test
docker_tests:
	# docker-compose -f docker-compose.yaml rm -f -v
	docker-compose -f docker-compose.yaml up --build --abort-on-container-exit --remove-orphans
.PHONY: docker_tests
