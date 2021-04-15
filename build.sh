#!/bin/sh

mkdir -p build
gcp -ur public/* build/

docker build -f Dockerfile -t yuriyg/inventory-web:0.0.1 ./build/

# docker run -d -p 3780:80 --name inventory-web yuriyg/inventory-web:0.0.1