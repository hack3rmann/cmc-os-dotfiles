# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs --output rustup.sh
sh rustup.sh -y
rm rustup.sh

source ~/.bashrc

# Install tools
cargo install zoxide bat eza

source ~/.bashrc
