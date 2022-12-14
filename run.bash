#!/usr/bin/env bash

set -euo pipefail

export ELECTRON_ENABLE_LOGGING=1
export TMPDIR="$XDG_CACHE_HOME"

ln -s /app/etc/lsb-release /etc/lsb-release
exec zypak-wrapper /app/extra/opt/Breitbandmessung/breitbandmessung "$@" --no-sandbox
