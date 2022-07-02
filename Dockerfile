FROM python:3.8-alpine
ADD . /tmp/d
WORKDIR /tmp/d
RUN python /tmp/d/setup.py install
