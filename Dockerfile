FROM python:3-alpine as base

RUN apk add --no-cache --virtual build-deps build-base g++ python3-dev musl-dev libstdc++ && \
  pip install numpy && \
  pip install pandas && \
  apk del build-deps && \
  apk add --no-cache libstdc++ && \
  rm -rf /root/.cache

