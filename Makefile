.PYHON: all
all: ../.vimrc submodule

#.PYHON: vimrc
../.vimrc:
	echo "setup ~/.vimrc vim config file"
	ln -s .vim/.vimrc ../.vimrc

.PYHON: submodule
submodule:
	git submodule update


.PYHON: help
help:
	echo "Just using make to setup all vim config"
