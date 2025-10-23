#!/usr/bin/env bash
# Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

_omb_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
source "${_omb_root}/omb-cli/src/log.bash"

SRC_PATH=$(dirname "${BASH_SOURCE[0]}")
source "$SRC_PATH/run_command.bash"

shopt -s extglob

# defaults
DATE_FMT='+%Y%m%d-%H%M%S'
DEFAULT_BACKUP_DIR=~/.oh-my-bash

function list_all_bash_files {
    CURRENT_FUNC="omb::backup::static.list_all_bash_files"
    find ~ -maxdepth 1 -name "*bash*" | grep -v ".oh-my-bash"
}

function get_latest_backup_index {
    local latest_index=0
    for dir in "$DEFAULT_BACKUP_DIR"/.omb-backup_*; do
        if [[ -d "$dir" ]]; then
            index=${dir##*-}
            if [[ "$index" -gt "$latest_index" ]]; then
                latest_index=$index
            fi
        fi
    done
    echo "$latest_index"
}

function create_indexed_backup_dir {
    CURRENT_FUNC="omb::backup::static.create_indexed_backup_dir"

    local latest_index=$(get_latest_backup_index)
    local new_index=$((latest_index + 1))
    local new_backup_dir="$DEFAULT_BACKUP_DIR/.omb-backup_$(date $DATE_FMT)-$new_index"
    run_command mkdir -p "$new_backup_dir"
    echo "$new_backup_dir"
}

function start_backup {
    CURRENT_FUNC="omb::backup::start_backup"

    local backup_dir=$(create_indexed_backup_dir)

    info "starting backup at $(date)"
    info "..by backing up to $backup_dir"

    run_command mkdir -p "$backup_dir"

    info "about to backup bash files over at ~"
    warn "this function backs up EVERYTHING that contains 'bash'."

    local files_backed_up=0
    mapfile -t files_to_backup < <(list_all_bash_files)

    if [[ "${#files_to_backup[@]}" == 0 ]]; then
        error "cannot find files to backup. this can happen due to unexisting files or a bug in the script's source code"
        exit 1
    fi

    for file in "${files_to_backup[@]}"; do
        if [[ -z "$file" ]]; then
            continue
        fi

        full_path=$file

        if [[ -d "$full_path" ]]; then
            run_command cp -r "$full_path" "$backup_dir/$(basename $file).d"
            files_backed_up=$((files_backed_up + 1))
        elif [[ -f "$full_path" ]]; then
            fn=$(basename "$file" .sh)
            run_command cp "$full_path" "$backup_dir/$fn.txt"
            files_backed_up=$((files_backed_up + 1))
        fi
    done

    ok "backed up $files_backed_up files"
}
