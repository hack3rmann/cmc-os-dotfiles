## Setup

### 1. Recover your previous configuration

```shell
cd
mv .config .config.bak
mv .bashrc .bashrc.bak
mv .clangd .clangd.bak
mv .clang-format .clang-format.bak
```

### 2. Clone repo and extract files (with make)

```shell
cd
git clone https://github.com/slava30727/cmc-os-nvim-config.git dotfiles
cd dotfiles
make
```

### 3. Install all components (rust + zoxide + eza + bat)
```shell
sh install.sh
```
