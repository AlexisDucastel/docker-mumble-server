#!/bin/bash

[ "$1" != "" ] && TAG="$1" || TAG="latest"
docker build -t aducastel/mumble-server:$TAG .
