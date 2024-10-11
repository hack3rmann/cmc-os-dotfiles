all:
	ln -sfT ~/dotfiles/.config ~/.config
	ln -sfT ~/dotfiles/.bashrc ~/.bashrc
	ln -sfT ~/dotfiles/.zshrc ~/.zshrc
	ln -sfT ~/dotfiles/.aliases.sh ~/.aliases.sh
	ln -sfT ~/dotfiles/.clang-format ~/.clang-format
	ln -sfT ~/dotfiles/.clangd ~/.clangd

clean:
	rm ~/.config ~/.bashrc ~/.clang-format ~/.clangd
