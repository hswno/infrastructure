#!/bin/bash

docker exec hsw-dns-server /bin/sh -c "kill -HUP \$(cat /var/run/named/named.pid)"
