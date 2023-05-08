FROM python:3.8

ENV POETRY_VERSION=1.4.2
RUN pip install "poetry==$POETRY_VERSION"

WORKDIR /whoami
COPY poetry.lock pyproject.toml /whoami

RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction --no-ansi

COPY /whoami/* /whoami

EXPOSE 8000

ENTRYPOINT ["uvicorn", "--host", "0.0.0.0", "app:app", "--reload"]