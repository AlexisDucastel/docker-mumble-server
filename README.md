# aducastel/mumble-server
Mumble Server Docker image

## How to run

```
docker run -d -v /path/to/data:/data \
  -p 64738:64738/udp -p 64738:64738 \
  aducastel/mumble-server
```

## Docker compose sample (compatible with Rancher)

Please visit https://github.com/AlexisDucastel/docker-mumble-server to find docker-compose.yml and rancher-compose.yml sample

## Optional VAR
- MUMBLE_PORT=64738 : Listening port for Mumble. Default: The default port is 64738.
