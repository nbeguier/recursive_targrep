#!/bin/bash

PATTERN=$1

find . -type f -name '*.tar.gz' -exec ./targrep.sh "{}" "${PATTERN}" \;
