FROM fedora:22
MAINTAINER Pavel Odvody <podvody@redhat.com>

RUN dnf install -y autoconf automake gcc git libtool make\
 && git clone https://github.com/stedolan/jq.git

WORKDIR jq

RUN autoreconf -fi\
 && ./configure\
 && make

ENTRYPOINT ./jq
