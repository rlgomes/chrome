#!/bin/bash
#
# builds and tags all of the .deb files under archive
#
    
docker build base --tag rodneygomes/chrome:base

for DEB in `ls archive`
do
    VERSION=$(echo $DEB | awk -F. '{print $1}' | awk -F_ '{print $2}')
    docker build . --build-arg CHROME_DEB=archive/$DEB --tag rodneygomes/chrome:v$VERSION
done
