#!/bin/sh
docker run --rm -it -v $(cd .. && pwd)/node_modules:/mnt/node_modules -v $(cd .. && pwd)/:/mnt -w /mnt node:lts npm install
docker run --rm -it -v $(cd .. && pwd)/node_modules:/mnt/node_modules -v $(cd .. && pwd)/:/mnt -w /mnt node:lts npm run build
