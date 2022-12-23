#!/bin/bash
set -e

echo "RUNNING TESTS"
pytest -rP ./tests --doctest-modules --junitxml=./coverage/test-results.xml --cov=python_cicd --cov-report=term --cov-report=xml
