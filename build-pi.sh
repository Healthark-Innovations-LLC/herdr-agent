#!/bin/bash 

cd "$(dirname $0)" && set -xe

bash ../pi-agent/build-all.sh
bash build.sh

