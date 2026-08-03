FROM debian:trixie

COPY . /tmp/build
WORKDIR /tmp/build
RUN apt-get update && \ 
  apt-get install -y cmake libbz2-dev zlib1g-dev libjpeg-dev libpng-dev libgdal-dev gnuplot build-essential git

RUN mkdir build && \ 
  cd build && \ 
  cmake .. && \ 
  make install && \ 
  splat --help
