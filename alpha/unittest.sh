#!/bin/sh -ex
./alpha/set_dependencies.sh

npm install
./node_modules/.bin/_mocha $(find spec -name '*-spec.js') --timeout 10000 --require spec/helper.js
