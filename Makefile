

all:
	ln -sf ~/dotfiles/.config ~/.config
	ln -sf ~/dotfiles/.bashrc ~/.bashrc
	ln -sf ~/dotfiles/.clang-format ~/.clang-format

clean:
	rm ~/.config ~/.bashrc ~/.clang-format
