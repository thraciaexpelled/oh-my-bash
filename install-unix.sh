printf "Do you want to append $HOME/.local/bin to your PATH? [y/N] "

read ANS

echo

case $ANS in
	*y)
		echo -e "\n\nexport PATH=$PATH:$HOME/.local/bin\n\n" >> ~/.bashrc
	;;
	*)
		exit 1
	;;
esac