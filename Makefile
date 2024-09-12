all:
	ln -sf ~/dotfiles/.config ~/.config
	ln -sf ~/dotfiles/.bashrc ~/.bashrc
	ln -sf ~/dotfiles/.clang-format ~/.clang-format
	ln -sf ~/dotfiles/.clangd ~/.clangd

clean:
	rm ~/.config ~/.bashrc ~/.clang-format ~/.clangd
