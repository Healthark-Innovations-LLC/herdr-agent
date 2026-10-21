#!/bin/bash 

cd "$(dirname $0)" && set -xe

bash ../pi-agent/build-all.sh

cd ../herdr-agent
bash build.sh

docker builder prune -f

