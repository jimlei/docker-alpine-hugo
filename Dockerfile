FROM alpine:edge
MAINTAINER Jim Leirvik <jim@jimleirvik.no>

ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    TERM="xterm" \
    UID="1100"

RUN adduser -D -u ${UID} hugo && \
    apk --update add \
    hugo && \
    rm /var/cache/apk/*

RUN mkdir -p /data && \
    chown -R hugo:hugo /data
VOLUME /data
WORKDIR /data

USER hugo

ENTRYPOINT ["hugo"]