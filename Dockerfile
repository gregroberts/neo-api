FROM ubuntu:16.04

MAINTAINER Tomasz Guzialek "greg.roberts1991@gmail.com"

RUN apt-get update -y \
    && apt-get install -y \
    python-dev \
    python-pip \
    && rm -rf /var/lib/apt/lists/*

COPY . /neo-api

WORKDIR /neo-api

RUN pip install -r requirements.txt

CMD ["python", "main.py"]

EXPOSE 5000