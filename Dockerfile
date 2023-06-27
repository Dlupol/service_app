FROM python:3.9-alpine3.16

WORKDIR /app
COPY requirements.txt .
COPY service service

RUN pip install -r requirements.txt
EXPOSE 8000