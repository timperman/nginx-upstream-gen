## NGiNX Upstream Generator

Using @jwilder [docker-gen](https://github.com/jwilder/docker-gen) and example code from [nginx-proxy](https://github.com/jwilder/nginx-proxy) upstream-gen monitors the Docker API to write NGiNX upstream configurations. This is useful if you are integrating application containers with an existing NGiNX reverse proxy configuration running in a separate container. Maybe you have an external reverse proxy or just want to ensure containers that serve traffic don't have a mounted Docker socket.
