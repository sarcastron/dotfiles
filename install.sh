#!/env zsh

if [[ -z "$ZSH_VERSION" ]]; then
  echo "❌  zsh is required. Switch your shell to zsh."
  exit
fi

echo "⬇️  Fetching dotfiles repo"
git clone git@github.com:sarcastron/dotfiles.git
cd dotfiles

source $PWD/dotfiles.sh
cat << EOF

`blue -------------------------------------------------------------------`
Run `magenta "source \\$PWD/dotfiles/dotfiles.sh"` to use in this session.
You will want to run `magenta "df_install"` to complete the installation.
See the help below.
`blue -------------------------------------------------------------------`

EOF

source $PWD/dotfiles.sh && df_help
