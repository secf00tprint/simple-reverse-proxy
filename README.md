
# Simple Reverse Proxy 

TL;DR

```
sudo docker build -t simple-reverse-proxy . && sudo docker run -ti -p 127.0.0.1:3333:80 simple-reverse-proxy

```

This reverse proxy is structured as following:

- Docker as a container
- Nginx as server reachable from outside
- Python3 simple HTTP Server, server used inside

A detailed explanation can be found here:
