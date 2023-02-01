FROM python:3.10.4-slim-buster

RUN apt-get update \
	&& apt-get install -y --no-install-recommends git curl vim nano\
	&& apt-get purge -y --auto-remove \
	&& rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip


RUN mkdir -p /app
RUN pip install poetry

WORKDIR /app
COPY poetry.lock pyproject.toml /app/

RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction
COPY . .
CMD ["/bin/bash"]
