#!/usr/bin/env bash
# Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

_omb_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
source "${_omb_root}/omb-cli/src/log.bash"

# handles the execution of commands, and rightfully stores output
# and such to a variable that is later to be printed
#
# $1: command
#
# NOTE: this function printf's "ERR: $output" for which the caller
#       must catch the output to a variable. printf's "ok"
#       otherwise
function run_command {
    local output
    local exit_code

    set +e
    output=$("$@" 2>&1)
    exit_code=$?
    set -e

    if [[ $exit_code != 0 ]]; then
        error "command '$*' failed with exit code $exit_code: $output"
        exit 1
    fi
}

