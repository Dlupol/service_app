FROM python:3.9-alpine3.16

WORKDIR /service

COPY requirements.txt .
COPY service /service

EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r requirements.txt
