#!/bin/zsh

function df_install {
  SOURCE_CMD="source $PWD/dotfiles.sh"
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

function df_install_spaceship {
  zsh $HOME/dotfiles/installers/spaceship.sh
}

function df_install_nvm {
  zsh $HOME/dotfiles/installers/nvm.sh
}

function df_install_rust {
  zsh $HOME/dotfiles/installers/rust.sh
}