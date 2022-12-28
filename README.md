# CICD on github

[![CI](https://github.com/khatkeashish/PythonCICD/actions/workflows/ci.yml/badge.svg)](https://github.com/khatkeashish/PythonCICD/actions/workflows/ci.yml)


**This is very opiniated way of doing CICD.**


## Prerequisites
Install following packages
- [pyenv](https://github.com/pyenv/pyenv) for python version management
- [poetry](https://python-poetry.org/docs/) for virtual environment
- [docker](https://www.docker.com/) to create containers
- [sphinx](https://www.sphinx-doc.org/en/master/index.html) to create automatic documentation

## Developer's environment
- Install python packages `poetry install`
- Source venv: `source .venv/bin/activate`
- Install pre-commit hook: `pre-commit install`
- Run tests with vertual env: `make tests`
- Run the same tests in docker container: `make docker_tests`


<!-- ## CICD components -->

### Formatting
- [black](https://github.com/psf/black)
- [isort](https://pycqa.github.io/isort/)
- [flake8](https://flake8.pycqa.org/en/latest/)
- [mypy](http://mypy-lang.org/)

### Testing
- [pytest](https://docs.pytest.org/en/7.2.x/)

### Documentation with sphinx
- Build local documentations: `cd docs && make html`
- Documentation: `open _build/html/index.html`

### Github actions
- [CI](./.github/workflows/ci.yml)
- [Publish docs](./.github/workflows/docs.yml)
    - source: https://coderefinery.github.io/documentation/gh_workflow/ 


### Configurations
- [project](pyproject.toml)
- [docker](.dockerignore)
- [flake8](.flake8)
- [pre-commit](.pre-commit-config.yaml)
- [black](pyproject.toml)
- [isort](pyproject.toml)