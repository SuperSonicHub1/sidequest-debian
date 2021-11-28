#!/bin/bash

RUNNER=${RUNNER:-podman}

./generate-diff.bash
"$RUNNER" build -t sidequest-ubuntu .
