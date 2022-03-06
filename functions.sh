#!/bin/zsh
DOTFILE_BASEDIR=${0:a:h}

function df_install {
  SOURCE_CMD="source $DOTFILE_BASEDIR/dotfiles.sh"
  grep -q "$SOURCE_CMD" $1
  if [ $? -eq 0 ] ; then 
    echo "Good news! It looks like It is already sourced in $1"
  else 
    echo "\n+ Adding source directive to $1"
    echo "$SOURCE_CMD" >> $1
  fi
}

function df_install_prezto {
  zsh $HOME/dotfiles/installers/prezto.sh
}

function df_install_starship {
  zsh $HOME/dotfiles/installers/starship.sh
}

function df_install_nvm {
  zsh $HOME/dotfiles/installers/nvm.sh
}

function df_install_rust {
  zsh $HOME/dotfiles/installers/rust.sh
}

function df_help {
  cat << EOF
Sarcastron's DotFiles (`cyan https://github.com/sarcastron/dotfiles`)

  `green df_install`          - Adds source command to the file provided.
                        example: `magenta "df_install \\$HOME/.profile"`
  
  `green df_install_prezto`   - Installs Prezto (`cyan https://github.com/sorin-ionescu/prezto`).
  
  `green df_install_starship` - Installs StarShip prompt (`cyan https://starship.rs/`).

  `green df_install_nvm`      - Installs NVM (`cyan https://github.com/nvm-sh/nvm`).
  `green df_install_rust`     - Installs Rust (`cyan https://www.rust-lang.org/tools/install`).
EOF
}

black() {
    echo -e "\e[30m${1}\e[0m"
}

red() {
    echo -e "\e[31m${1}\e[0m"
}

green() {
    echo -e "\e[32m${1}\e[0m"
}

yellow() {
    echo -e "\e[33m${1}\e[0m"
}

blue() {
    echo -e "\e[34m${1}\e[0m"
}

magenta() {
    echo -e "\e[35m${1}\e[0m"
}

cyan() {
    echo -e "\e[36m${1}\e[0m"
}

gray() {
    echo -e "\e[90m${1}\e[0m"
}