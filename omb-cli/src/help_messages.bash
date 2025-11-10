#!/usr/bin/env bash
# Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

set -e

# echo ${BASH_SOURCE[@]}

SRC_PATH=$(dirname "${BASH_SOURCE[0]}")

source "$SRC_PATH/color.bash"

VERSION="0.9.3"
PROGRAM_NAME=$(basename $0)

function print_help {
    printf "%s %s --<command> [NAME]\n" "$(color_fg "Usage:" yellow)" $PROGRAM_NAME
    printf "A theme framework for Bash\n\n"
    printf "Commands: %s\n\n" "$(color_fg "psst.. all commands can be passed as either 'cmd', 'c', '-c', or '--cmd'" gray)"

    printf "\t%s\n" "$(bolden $PROGRAM_NAME theme)"
    printf "\tApply, preview, create, delete themes\n\n"

    printf "\t%s\n" "$(bolden $PROGRAM_NAME backup)"
    printf "\tBacks up seemingly bash related files to %s\n\n" "$(color_fg "$HOME/.oh-my-bash" yellow)"

    printf "\t%s\n" "$(bolden "$PROGRAM_NAME help")"
    printf "\tPrints this message and quits\n\n"

    printf "\t%s\n"  "$(bolden "$PROGRAM_NAME version")"
    printf "\tPrints version and quits\n\n"

    printf_wrap "Run each command with the %s option to get yet more information about that command\n\n" "$(color_fg "--help" yellow)"

    printf_wrap "%s is an assortment of shell scripts for the Bourne-Again Shell that is written in the hopes it will be useful to those who wish to use it on their systems.\n\n" "$(color_fg "oh-my-bash" yellow)"
    printf_wrap "%s comes with absolutely no warranty and is not responsible for any loss of data or any form of liability under the terms of the MIT License.\n\n" "$(color_fg "oh-my-bash" yellow)"
    printf "Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved\n"
}

function print_help_backup {
    printf "%s %s backup --command\n" "$(color_fg "Usage:" yellow)" $PROGRAM_NAME
    printf "Backs up seemingly bash related files to %s\n\n" "$(color_fg "$HOME/.oh-my-bash" yellow)"
    printf "Options: %s\n\n" "$(color_fg "psst.. all options can be passed as either '-o', or '--opt'" gray)"

    printf "\t%s\n" "$(color_fg "Options are now deprecated!" yellow)"
    printf_wrap "\tAs of version %s, you no longer have the option to choose which directory you backup your files to.\n\n" "$(bolden "0.9.0")"

    printf_wrap "%s: Since version %s, all backups have to be %s. Restoration process will be implemented as soon as possible.\n\n" "$(color_fg "Note" yellow)" "$(bolden "0.1.0")" "$(bolden "Restored manually.")"

    printf_wrap "%s is an assortment of shell scripts for the Bourne-Again Shell that is written in the hopes it will be useful to those who wish to use it on their systems.\n\n" "$(color_fg "oh-my-bash" yellow)"
    printf_wrap "%s comes with absolutely no warranty and is not responsible for any loss of data or any form of liability under the terms of the MIT License.\n\n" "$(color_fg "oh-my-bash" yellow)"
    printf "Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved\n"
}

function print_help_theme {
    printf "%s: %s theme --command\n" "$(color_fg "Usage" yellow)" $PROGRAM_NAME
    printf "Apply, preview, create, delete themes\n"
    printf "Options: %s\n\n" "$(color_fg "psst.. all options can be passed as either '-o', or '--opt'" gray)"

    printf "\t%s\n" "$(bolden "$PROGRAM_NAME theme [-s, --set] [THEME_NAME]")"
    printf "\tSet a theme of name THEME_NAME\n\n"

    printf "\t%s\n" "$(bolden "$PROGRAM_NAME theme [-u, --unset]")"
    printf "\tUnset current theme\n\n"

    printf "\t%s\n" "$(bolden "$PROGRAM_NAME theme [-p, --preview] [THEME_NAME]")"
    printf "\tPreview a theme of name THEME_NAME\n\n"

    printf "\t%s\n" "$(bolden "$PROGRAM_NAME theme [-l, --list]")"
    printf "\tList both locally and globally available themes for %s\n\n" $PROGRAM_NAME

    printf "\t%s\n" "$(bolden "$PROGRAM_NAME theme [-r, --remove] [THEME_NAME] ")"
    printf "\tRemove a theme of name THEME_NAME\n\n"

    printf_wrap "%s: As of version %s, all backups have to be %s. Restoration process will be implemented as soon as possible.\n\n" "$(color_fg "Note" yellow)" "$(bolden "$VERSION")" "$(bolden "Restored manually.")"

    printf_wrap "%s is an assortment of shell scripts for the Bourne-Again Shell that is written in the hopes it will be useful to those who wish to use it on their systems.\n\n" "$(color_fg "oh-my-bash" yellow)"
    printf_wrap "%s comes with absolutely no warranty and is not responsible for any loss of data or any form of liability under the terms of the MIT License.\n\n" "$(color_fg "oh-my-bash" yellow)"
    printf "Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved\n"
}
