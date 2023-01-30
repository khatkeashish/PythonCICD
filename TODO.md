## TODO:
- Add dockerized tests with github actions
- Add support for prototyping in an applied DS project:
  - jupyterlab
  - nbdev
- Add support for security concerns
  - bandit hook for non secure python code scanner, could be added as pre-commit
  - instead for vulnerability scan in packages I would add `poetry export --without-hashes -f requirements.txt | safety check --full-report --stdin` (example https://github.com/python-poetry/poetry/issues/994)
  or install pip-audit and then   `poetry export --without-hashes -f requirements.txt | pip-audit  --requirement requirements.txt` (example https://www.redhat.com/sysadmin/find-python-vulnerabilities) this could be added as a make command, to be run before pushing / merging to master
