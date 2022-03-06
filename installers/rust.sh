which -s rustc rustup cargo &> /dev/null
if [ $? -eq 0 ] ; then
  echo "Rust is already installed. 🦀"
  exit
fi

echo "🛠 Installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# if [[ "$PATH" != *".cargo/bin"* ]]; then
#   echo "Rust binaries (cargo, rustup, rustc) missing from your \$PATH variable."
#   echo "PATH=\$PATH:\$HOME/.cargo/bin" >> ~/.zshrc
# fi
. "$HOME/.cargo/env"

echo "\n📦 Checking for updates"
rustup update

echo "\n🦀 Rust installed"
rustc --version

echo "\nRun \`source \$HOME/.cargo/env\` to start using it."