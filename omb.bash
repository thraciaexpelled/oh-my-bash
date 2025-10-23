#!/usr/bin/env bash
# Copyright (c) 2025 thrciaexpelled on GitHub, All rights reserved

export OMB_ROOT=$(dirname "$(readlink -f "$0")")

source "$OMB_ROOT/omb-cli/src/main.bash"

main "$@"
