FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install ez-nginx-proxy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ez-nginx-proxy"]
CMD ["--help"]
