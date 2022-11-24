FROM python:3.9.6-alpine

COPY ./requirements.txt /src/requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r /src/requirements.txt

COPY . /src

RUN mkdir /src/staticfiles

EXPOSE 8000

WORKDIR src
