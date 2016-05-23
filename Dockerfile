FROM jwilder/docker-gen:0.7.1
MAINTAINER Brett Timperman brett.timperman@gmail.com

ENV \
  UPSTREAM_TEMPLATE=/etc/upstream-gen/upstream.tmpl \
  UPSTREAM_OUTPUT=/etc/nginx/conf.d/upstream.conf \
  REQUIRED_UPSTREAMS=default-upstream \
  DEFAULT_BACKEND=127.0.0.1:65535 \
  NGINX_CONTAINER_NAME=nginx

COPY upstream-gen-entrypoint.sh /etc/upstream-gen/upstream-gen-entrypoint.sh
COPY upstream.tmpl ${UPSTREAM_TEMPLATE}

# executing shell for environment variable substitution
ENTRYPOINT [ "/etc/upstream-gen/upstream-gen-entrypoint.sh" ]
CMD [ "upstream-gen" ]
