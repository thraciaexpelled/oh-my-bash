#!/usr/bin/env bash
# Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

# shellcheck disable=SC2059

declare -A colors

colors=(
    [black]="0"
    [red]=1
    [green]=2
    [yellow]=3
    [blue]=4
    [gray]="8;5;8"
)

# wraps very long text
function printf_wrap {
    printf "$@" | fmt -w 80
}

# $1: string
# $2: color
# $3: dim (or not)
function color_fg {
    local string=$1
    local color=$2
    local dim=$3

    if [[ -v "colors[$color]" ]]; then
        if [[ -v $dim ]]; then
            printf "\x1b[2;3%sm%s\x1b[0m" "${colors[$color]}" "$string"
            return
        fi

        printf "\x1b[3%sm%s\x1b[0m" "${colors[$color]}" "$string"
    else
        printf "invalid color: %s\n" "$color" >&2
        exit 1
    fi
}

# $1: string
# $2: color
function color_bg {
    local string=$1
    local color=$2

    if [[ -v "colors[$color]" ]]; then
        printf "\x1b[4%sm%s\x1b[0m" "${colors[$color]}" "$string"
    else
        printf "invalid color: %s\n" "$color" >&2
        exit 1
    fi
}

# $1: string
function bolden {
    local string=$@
    printf "\x1b[1m%s\x1b[0m" "$string"
}
