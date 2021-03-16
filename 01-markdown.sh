#!/bin/bash

# * note selinux with PodMan
#   --security-opt label=disable
#   https://github.com/containers/podman/blob/master/troubleshooting.md

docker run --rm --security-opt label=disable -v $(pwd):/shared -w /shared docker.io/pandoc/core:2.12 -f markdown -t html ${1:?enter md file}
