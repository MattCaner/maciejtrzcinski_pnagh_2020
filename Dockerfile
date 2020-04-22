FROM debian

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y binutils
RUN apt-get install -y gcc
RUN apt-get install -y vim
RUN apt-get install -y nano
RUN mkdir BINUTILS_ZADANIA
COPY binutils_zadania_mt BINUTILS_ZADANIA
WORKDIR BINUTILS_ZADANIA
