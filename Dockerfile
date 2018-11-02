FROM alpine:3.8
LABEL maintainer="John McKenzie<jmckind@gmail.com>"

RUN apk add --no-cache rethinkdb

VOLUME ["/data"]

WORKDIR /data

CMD ["rethinkdb", "--bind", "all"]

EXPOSE 28015 29015 8080
