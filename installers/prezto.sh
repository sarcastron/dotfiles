#!/bin/zsh

if [[ "$SHELL" != *"zsh" ]]; then
  echo "\nzsh is required. Switch your shell to zsh"
  exit
fi
echo "✅ Using zsh"

if [[ -d "/path/to/dir" ]]; then
  echo "\n.zprezto directory already exists!"
  exit
fi
echo "✅ No prior prezto installation detected."

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo "\n👋 All done."