FROM python:3.9-alpine

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

COPY app/* .

RUN apk add --update --no-cache --virtual .tmp-build-deps \
    pip install --no-cache-dir -r requirements.txt