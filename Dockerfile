FROM python:3.12.2

COPY poetry.lock pyproject.toml ./

RUN pip install poetry
RUN poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

COPY . /app

# EXPOSE 8000
WORKDIR /app

CMD ["uvicorn", "app.main:app", "--reload"]