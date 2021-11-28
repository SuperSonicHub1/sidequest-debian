#!/bin/bash

RUNNER=${RUNNER:-podman}
NAME=${NAME:-sidequest}
DIR=${DIR:-"$PWD"}

"$RUNNER" cp "$NAME:/SideQuest/dist/SideQuest_0.10.25_amd64.deb" "$DIR"
