#!/bin/bash

cd $(dirname "$0")/..
mkdir -p tmp
find * -type f -print | egrep -v ' |/target/|\.(jar|gif)$|^tmp/' | sort > tmp/FILES
wc -l tmp/FILES
