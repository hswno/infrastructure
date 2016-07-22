#!/bin/bash

docker run \
    --name=hsw-dns-server \
    --net=hsw \
    -d \
    -p 53:53 -p 53:53/udp \
    --restart=always \
    -v ~/configuration/dns-server/named.conf:/etc/bind/named.conf \
    -v ~/configuration/dns-server/zones:/etc/bind/zones \
    hswno/bind9
