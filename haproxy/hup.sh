#!/bin/bash
# Script to use when changing haproxy configuration
# without having to cause downtime
docker kill -s HUP haproxy
