FROM python:3.6

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
RUN pip install --upgrade pip

ENV PATH="$PATH:/root/.poetry/bin"

ENTRYPOINT ["poetry"]
