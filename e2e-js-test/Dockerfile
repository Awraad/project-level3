FROM node:alpine

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache make git curl jq python3 && \
    ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

RUN npm install -g casperjs mocha jscodeshift

WORKDIR /tmp
RUN curl -Ls https://github.com/dustinblackman/phantomized/releases/download/2.1.1/dockerized-phantomjs.tar.gz | tar xz &&\
  cp -R lib lib64 / &&\
  cp -R usr/lib/x86_64-linux-gnu /usr/lib &&\
  curl -k -Ls https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar -jxf - &&\
  cp phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs &&\
  rm -rf /tmp/*


