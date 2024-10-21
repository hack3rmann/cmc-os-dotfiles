# cmc-os-dotfiles

## Brief

Dotfiles for CMC OS MSU practicum.

## Setup

### 1. Clone repo and extract files (with make)

It will safely recover all your existing configuration.

```shell
git clone https://github.com/hack3rmann/cmc-os-dotfiles.git ~/dotfiles --recurse-submodules
cd ~/dotfiles
make install
```

### 2. Install all optional components (rust + zoxide + eza + bat)
```shell
./install-components.sh
```
