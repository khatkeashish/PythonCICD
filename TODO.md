## TODO:
- Add dockerized tests with github actions
- Add support for prototyping in an applied DS project:
  - jupyterlab
  - nbdev
- Add support for security concerns
  - non secure code scanner: bandit hook (https://github.com/PyCQA/bandit/tree/main), could be added as pre-commit
  - vulnerability scan in packages:
    - `poetry export --without-hashes -f requirements.txt | safety check --full-report --stdin` (example https://github.com/python-poetry/poetry/issues/994) or install pip-audit and then   `poetry export --without-hashes -f requirements.txt | pip-audit  --requirement requirements.txt` (example https://www.redhat.com/sysadmin/find-python-vulnerabilities) this could be added as a make command, to be run before pushing / merging to master
    - safety (https://docs.safetycli.com/safety-2/) as part of CICD
