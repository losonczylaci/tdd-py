FROM python:3.9-alpine

WORKDIR /dojo
COPY requirements.txt /dojo
RUN pip install -r requirements.txt
