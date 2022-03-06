which starship &> /dev/null
if [ $? -eq 0 ] ; then
  echo "Starship is already installed. 🚀"
  exit
fi

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

cat << EOM

`blue -----------------------------------------------------------`
  🚀 Starship is installed. To complete the installation add
    eval "\$(starship init zsh)"
  to your .zshrc files.
`blue -----------------------------------------------------------`

EOM

grep -q "starship init zsh" ~/.zshrc
if [ $? -eq 0 ] ; then 
  echo "Good news! It looks like you already have starship set up."
else 
  # echo "Would you like me to append this line to your \`.zshrc\`?"
  read "response?Would you like me to append this line to your \`.zshrc\`? [y/N] "
  case "$response" in
    [yY]) 
      echo "\$(starship init zsh)" >> ~/.zshrc
      ;;
    *)
      ;;
  esac
fi