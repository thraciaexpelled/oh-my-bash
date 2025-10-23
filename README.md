> [!WARNING]
> This project is unfinished.

# `oh-my-bash`
`oh-my-bash` is a theme (and plugin in the future...) manager for GNU Bash. It can backup your Bash files, apply, create or remove Bash themes, and in the future do much more.

## Installation
### Unix/Linux
> [!IMPORTANT]
> This assumes that your `$PATH` contains `~/.local/bin`. If not, **append `export PATH=$PATH:$HOME/.local/bin` to your `~/.bashrc`

A `Makefile` is provided in the root of the project. Run `make install` to install `oh-my-bash`.

### Windows (MSYS2 Only)
> [!IMPORTANT]
> This assumes that your `$PATH` contains `~/.local/bin`. If not, **append `export PATH=$PATH:$HOME/.local/bin` to your `~/.bashrc`

> [!IMPORTANT]
> `make.msys2.bat` is **interactive**. follow the steps carefully to ensure `oh-my-bash` is installed properly on your MSYS2 environment.

`ln` on MSYS2 cannot create symlinks in a way that Unix makes symlinks. `mklink` must be used, which MSYS2 does not have access to.
Run `make.msys2.bat` **as administrator**, provide **absolute** filepaths for the root of this directory, and the `$HOME` directory as seen from non-MSYS2 programs to install `oh-my-bash`.

## License
```
