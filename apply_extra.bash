#!/usr/bin/env bash

set -euo pipefail

# unpack debian package
bsdtar -Oxf "Festnetz-Check-linux.deb" 'data.tar.*' |
    bsdtar --include 'opt/*' -xf -

# clean up
rm Festnetz-Check-linux.deb
