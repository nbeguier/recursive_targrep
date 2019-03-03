#!/bin/bash

TAR_NAME=$1
PATTERN=$2

while read filename
do
    tar -xOf "${TAR_NAME}" "$filename" | grep "${PATTERN}" | sed "s|^|$filename:|"
done < <(tar -tf "${TAR_NAME}" | grep -v '/$')
