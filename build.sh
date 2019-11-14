#!/bin/bash

# NPM_REG pode apontar para mirror/proxy on-prem
#NPM_REG=--registry http://mta-mirror.vtg/artifactory/api/npm/npm-remote/
NPM_REG=

docker build \
    --build-arg NPM_REG="$NPM_REG" \
    -t vertigo/loopback-tools .
