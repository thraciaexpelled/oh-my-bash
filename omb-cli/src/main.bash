#!/usr/bin/env bash
# Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

set -e

# echo ${BASH_SOURCE[@]}

SRC_PATH=$(dirname "${BASH_SOURCE[0]}")

source "$SRC_PATH/color.bash"
source "$SRC_PATH/help_messages.bash"
source "$SRC_PATH/log.bash"
source "$OMB_ROOT/omb-tools/src/backup.bash"
source "$OMB_ROOT/omb-tools/src/theme.bash"

# TODO: refactor this to use `getopts`
function main {
    CURRENT_FUNC="omb::main::main"

    # in normal languages, this would mean 'argc < 2'.
    # really wacky fucking language bash is
    if [[ $# -eq 0 ]]; then
        printf "%s %s --<command> [NAME]\n" "$(bolden "Usage:")" "$PROGRAM_NAME"
        printf "Run %s for more information on using %s\n" "$(color_fg "$PROGRAM_NAME --help" yellow)" "$(color_fg oh-my-bash yellow)"
        return 1
    fi

    case "$1" in
        "theme" | "t" | "-t" | "--theme")
            local theme_name=""

            case "$2" in
                "--set" | "-s")
                    if [[ -z $3 ]]; then
                        error "No theme name specified for command '$1'"
                        printf "Run %s for more information on using %s\n" "$(color_fg "$PROGRAM_NAME --help" yellow)" "$(color_fg oh-my-bash yellow)"
                        return 1
                    fi

                    theme_name=$3
                    theme_set "$theme_name"
                    return 1
                ;;

                "--preview" | "-p")
                    if [[ ! -v "$3" ]]; then
                        error "No theme name specified for command '$1'"
                        printf "Run %s for more information on using %s\n" "$(color_fg "$PROGRAM_NAME --help" yellow)" "$(color_fg oh-my-bash yellow)"
                        return 1
                    fi

                    theme_name=$3
                    error "not implemented yet"
                    return 1
                ;;

                "--list" | "-l")
                    error "not implemented yet"
                    return 1
                ;;

                "--remove" | "-r")
                    if [[ ! -v "$3" ]]; then
                        error "No theme name specified for command '$1'"
                        printf "Run %s for more information on using %s\n" "$(color_fg "$PROGRAM_NAME --help" yellow)" "$(color_fg oh-my-bash yellow)"
                        return 1
                    fi

                    theme_name=$3
                    error "not implemented yet"
                    return 1
                ;;

                "--help" | "-h")
                    print_help_theme
                    return 0
                ;;
            esac
        ;;

        "backup" | "b" | "-b" | "--backup")
            case "$2" in
                "-h" | "--help")
                    print_help_backup
                    return 0
                ;;
                *)
                    warn "Options for command '$1' has been deprecated since v0.1.0"
                ;;
            esac

            start_backup
            return 0
        ;;
        "version" | "v" | "-v" | "--version")
            echo $VERSION
            return 0
        ;;
        "help" | "h" | "-h" | "--help")
            # echo "'$1': not implemented yet"
            print_help
            return 0
        ;;
        *)
            error "invalid command: $1"
            return 1
        ;;
    esac
}
