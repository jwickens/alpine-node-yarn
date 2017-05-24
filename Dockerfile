FROM mhart/alpine-node:latest

ENV PATH /root/.yarn/bin:$PATH

RUN apk update \
  && apk add --update bash git openssh gzip \
  && apk add curl tar binutils \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && apk del curl tar binutils