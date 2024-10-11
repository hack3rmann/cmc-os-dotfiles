# Install Rust
sh -y $(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs --output rustup.sh)

source ~/.bashrc

# Install tools
cargo install zoxide bat eza

source ~/.bashrc

# Install zsh
# sh install_zsh.sh
