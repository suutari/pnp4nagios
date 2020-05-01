FROM ubuntu:18.04

RUN apt-get update && apt-get install -y build-essential

RUN apt-get install -y \
        autotools-dev \
        debhelper \
        po-debconf \
        quilt \
        rrdtool \
        librrds-perl

WORKDIR /workdir/source

COPY . .

RUN dpkg-checkbuilddeps

CMD sleep 3600
