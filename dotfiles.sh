# source this file from your .zshrc or .profile

source ./aliases.sh
source ./functions.sh




# if read -q "CHOICE?Would you like link aliases.sh and source them in \`~/.zshrc\`\? [y/N] "; then
#   echo "\n🔗 Linking aliases.sh"
#   ln -s $HOME/dotfiles/aliases.sh $HOME/aliases.sh

#   grep -q "aliases.sh" ~/.zshrc
#   if [ $? -eq 0 ] ; then 
#     echo "Good news! It looks like It is already linked."
#   else 
#     echo "\n+ Adding source to .zshrc"
#     echo "$SOURCE_TEXT" >> ~/.zshrc
#   fi
# fi
