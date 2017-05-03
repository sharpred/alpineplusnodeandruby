FROM alpine
# install pre-requisites
RUN apk update && apk upgrade && apk add --no-cache bash git openssh \
        make gcc g++ python \
        libatomic readline readline-dev \
        libxml2 libxml2-dev libxml2-utils \
        ncurses-terminfo-base ncurses-terminfo \
        libxslt libxslt-dev zlib-dev zlib ruby yaml \
        yaml-dev libffi-dev build-base git nodejs \
        ruby-io-console ruby-irb ruby-json ruby-rake \
        imagemagick imagemagick-dev make \
        libffi-dev ruby-dev py-pygments ruby-rdoc \
    && python -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip install --upgrade pip setuptools \