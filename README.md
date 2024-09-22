## Setup

### 1. Make a backup of your existing configuration

```shell
# Required
mv ~/.config ~/.config.bak
mv ~/.bashrc ~/.bashrc.bak
mv ~/.clangd ~/.clangd.bak
mv ~/.clang-format ~/.clang-format.bak
mv ~/dotfiles ~/dotfiles.bak

# Optional but recomended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 2. Clone repo and extract files (with make)

```shell
git clone https://github.com/slava30727/cmc-os-nvim-config.git ~/dotfiles
cd ~/dotfiles
make
```

### 3. Install all components (rust + zoxide + eza + bat)
```shell
sh install.sh
```
