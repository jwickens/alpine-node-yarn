FROM mhart/alpine-node:base-4.3.2

ENV PATH /root/.yarn/bin:$PATH

RUN apk update \
  && apk add bash git openssh \
  && apk add curl tar binutils \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && apk del curl tar binutils
