FROM ubuntu:18.04
# Set non-interactive for linux packages installation
ENV DEBIAN_FRONTEND=noninteractive

# Install linux packages
RUN apt-get -qq update && apt-get -qq install -y --no-install-recommends build-essential python3 python3-dev python3-pip python3-setuptools
# Set python
RUN cd /usr/local/bin && ln -s /usr/bin/python3 python && ln -s /usr/bin/pip3 pip

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
