#FROM debian:8.5
FROM alpine:3.4
MAINTAINER Henrik Steen <henrist@henrist.net>

RUN apk add --no-cache bind

EXPOSE 53/udp 53/tcp
CMD ["/usr/sbin/named", "-g"]
