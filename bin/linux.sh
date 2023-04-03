
#!/bin/bash
L=$(uname -s)
if [ $L != "Linux" ]; then
	echo "Error not Linux system" >> linuxsetup.log
	exit
else
	mkdir -p ~/.TRASH

	if [ -f ./.vimrc ]; then
			mv ~/.vimrc ~/.bup_vimrc
	fi
	
	echo "the current .vimrc file was changed to ‘.bup vimrc’." >> linuxsetup.log

	cat ~/.dotfiles/etc/vimrc > ~/.vimrc

	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc



fi
