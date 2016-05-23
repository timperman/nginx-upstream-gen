#!/bin/sh

if [ "$1" = "upstream-gen" ]; then
  docker-gen -notify-sighup ${NGINX_CONTAINER_NAME} \
    -watch -only-exposed ${UPSTREAM_TEMPLATE} ${UPSTREAM_OUTPUT}
else
  $@
fi
