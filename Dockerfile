FROM python:3-alpine as base

RUN apk add --no-cache --virtual build-deps gcc python3-dev libxslt-dev musl-dev jpeg-dev zlib-dev libxml2 libxml2-dev && \
  pip install setuptools && \
  pip install numpy && \
  pip uninstall setuptools -y && \
  apk del build-deps && \
  rm -rf /root/.cache
