

all:
	ln -sf ~/dotfiles/.config ~/.config
	ln -sf ~/dotfiles/.bashrc ~/.bashrc

clean:
	rm ~/.config ~/.bashrc
