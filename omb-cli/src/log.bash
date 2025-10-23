#!/usr/bin/env bash
# Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

source "$(dirname "${BASH_SOURCE[0]}")/color.bash"

# works like errno, set this variable to the name of the function
# that involves logging. will act like a prefix for log messages
export CURRENT_FUNC=""

# used for printing at what time the log was outputted
now() {
    date '+%H:%M:%S:~%N'
}

# $1: msg
function info {
    local prefix=`color_fg "$CURRENT_FUNC" blue`
    local time=`color_fg "$(now)" gray`
    local tag=`color_fg [info] blue dim`
    local msg=$1

    printf "%s %s %s :: %s\n" "$prefix" "$time" "$tag" "$msg"
}

# $1: msg
function ok {
    local prefix=`color_fg "$CURRENT_FUNC" green`
    local time=`color_fg "$(now)" gray`
    local tag=`color_fg "[ ok ]" green dim`
    local msg=$1

    printf "%s %s %s :: %s\n" "$prefix" "$time" "$tag" "$msg"
}

# $1: msg
function warn {
    local prefix=`color_fg "$CURRENT_FUNC" yellow`
    local time=`color_fg "$(now)" gray`
    local tag=`color_fg [warn] yellow dim`
    local msg=$1

    printf "%s %s %s :: %s\n" "$prefix" "$time" "$tag" "$msg"
}

# $1: msg
function error {
    local prefix=`color_fg "$CURRENT_FUNC" red`
    local time=`color_fg "$(now)" gray`
    local tag=`color_fg [fail] red dim`
    local msg=$1

    printf "%s %s %s :: %s\n" "$prefix" "$time" "$tag" "$msg"
}
