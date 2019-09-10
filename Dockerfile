FROM ubuntu:18.04
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
