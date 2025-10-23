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

> [!WARNING]
> `make.msys2.bat` is **interactive**. follow the steps carefully to ensure `oh-my-bash` is installed properly on your MSYS2 environment.

`ln` on MSYS2 cannot create symlinks in a way that Unix makes symlinks. `mklink` must be used, which MSYS2 does not have access to.
Run `make.msys2.bat` **as administrator**, provide **absolute** filepaths for the root of this directory, and the `$HOME` directory as seen from non-MSYS2 programs to install `oh-my-bash`.

## License
```
MIT License

Copyright (c) 2025 Gustavo Chudalov/Thraciaexpelled/Clangjesus

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```