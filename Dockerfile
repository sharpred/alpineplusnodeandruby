FROM mhart/alpine-node:6
# install pre-requisites
RUN apk update && apk upgrade && apk add --no-cache bash git openssh
# if you need to install node binaries
RUN apk add --no-cache make gcc g++ python

RUN apk add libatomic readline readline-dev \
        libxml2 libxml2-dev libxml2-utils \
        ncurses-terminfo-base ncurses-terminfo \
        libxslt libxslt-dev zlib-dev zlib ruby yaml \
        yaml-dev libffi-dev build-base git nodejs \
        ruby-io-console ruby-irb ruby-json ruby-rake \
        imagemagick imagemagick-dev make \
        libffi-dev ruby-dev \
    && apk add --no-cache py-pygments \
    && python -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip install --upgrade pip setuptools \
    && apk add py-pygments \
    && apk add ruby-rdoc