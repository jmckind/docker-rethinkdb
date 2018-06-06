FROM alpine:3.7
LABEL maintainer="John McKenzie<jmckind@gmail.com>"

RUN apk add --no-cache rethinkdb

CMD ["rethinkdb", "--bind", "all"]
EXPOSE 28015 29015 8080
