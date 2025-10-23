install:
	mkdir -p ~/.opt/oh-my-bash/bin
	mkdir -p ~/.local/bin
	install -m775 ./omb.bash ~/.opt/oh-my-bash/omb.bash
	ln -sf ~/.opt/oh-my-bash/omb.bash ~/.local/bin/omb
	ln -sf ~/.opt/oh-my-bash/omb.bash ~/.local/bin/oh-my-bash
	cp -r ./omb-cli ~/.opt/oh-my-bash
	cp -r ./omb-tools ~/.opt/oh-my-bash


install-msys2:
	echo "Run make.msys2.bat to install oh-my-bash for MSYS2. make.bat is interactive."