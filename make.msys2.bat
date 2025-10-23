rem Copyright (c) 2025 thraciaexpelled on GitHub, All rights reserved

@echo off

echo At some NT systems, creating symbolic links requires the user to have Administrator rights.
echo When this script is run with Administrator rights, the starting CWD would be in System32.
echo To prevent this, you have to manually provide the current working directory of oh-my-bash.
echo CWD:

set /p cwd=

echo MSYS2 home directory:
set /p msys2_home_dir=

mkdir "%msys2_home_dir%\.opt\oh-my-bash\bin"
mkdir "%msys2_home_dir%\.local\bin"

copy "%cwd%\omb.bash" "%msys2_home_dir%\.opt\oh-my-bash\omb.bash"

mklink "%msys2_home_dir%\.local\bin\omb" "%msys2_home_dir%\.opt\oh-my-bash\omb.bash"
mklink "%msys2_home_dir%\.local\bin\oh-my-bash" "%msys2_home_dir%\.opt\oh-my-bash\omb.bash"

xcopy /s /e /y "%cwd%\omb-cli" "%msys2_home_dir%\.opt\oh-my-bash\omb-cli"
xcopy /s /e /y "%cwd%\omb-tools" "%msys2_home_dir%\.opt\oh-my-bash\omb-tools"

echo Press enter twice to leave this script
set /p nil=