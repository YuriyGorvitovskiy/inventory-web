#!/bin/sh

npm run package

docker build -f Dockerfile -t yuriyg/inventory-web:0.0.1 ./build/web

# run localy
# docker run -d -p 3701:80 --name inventory-web yuriyg/inventory-web:0.0.1

# publish to Docker hub
# docker login --username=yuriyg 
# docker push yuriyg/inventory-web:0.0.1
