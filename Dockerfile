FROM alpine:3.7

MAINTAINER John McKenzie <jmckind@gmail.com>

RUN apk update --no-cache && \
  apk add --no-cache rethinkdb

ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.1/dumb-init_1.2.1_amd64 /usr/bin/dumb-init
RUN chmod +x /usr/bin/dumb-init

ENTRYPOINT ["/usr/bin/dumb-init"]
CMD ["rethinkdb", "--bind", "all"]
