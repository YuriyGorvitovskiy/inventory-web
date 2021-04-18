#!/bin/sh

npm run package

cp -r src/docker build/

docker build -f Dockerfile -t yuriyg/inventory-web:0.0.2 -t yuriyg/inventory-web:latest ./build

# run localy
# docker run -d -p 3701:80 -e DATA_URL=data/ --name inventory-web yuriyg/inventory-web:0.0.2

# publish to Docker hub
# docker login --username=yuriyg 
# docker push yuriyg/inventory-web:0.0.2 && docker push yuriyg/inventory-web:latest
# 

