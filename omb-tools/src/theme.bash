#!/usr/bin/env bash
# Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

_omb_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
source "${_omb_root}/omb-cli/src/log.bash"

function theme_set {
    CURRENT_FUNC="omb::theme::theme_set"

    local theme_name=$1
    info "Searching for theme $theme_name in $HOME/.omb-themes.d"
    error "not implemented yet"
}