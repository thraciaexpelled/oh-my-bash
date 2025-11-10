# Installing `oh-my-bash`
`oh-my-bash` is a theme manager for GNU Bash. `oh-my-bash` can be installed in almost any Unix-es.

## Installing on Unix
> [!IMPORTANT]
> If you're not using Bash as of the time of installing `oh-my-bash`,
> make sure that your shell is POSIX compatible. (***not*** `fish`)

```bash
make
yes | . install-unix.sh
```

## Installing on Microsoft Windows (MSYS2 __only__)

> [!WARNING]
> `make.msys2.bat` is ___***UNFINISHED***___. MSYS2 support is being worked on

On some systems, even after Windows Vista, You need to have administrator rights in order to create
symbolic links in Windows. Without creating these symbolic links, `oh-my-bash` will not work.

*todo*
