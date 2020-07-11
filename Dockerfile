FROM python:3.7-alpine

RUN apk add curl
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

ENV PATH="$PATH:/root/.poetry/bin"

ENTRYPOINT ["poetry"]
