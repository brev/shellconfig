### zgen

source "${HOME}/src/tarjoilija/zgen/zgen.zsh"

if ! zgen saved; then
  echo "Creating a zgen save"

  zgen oh-my-zsh

  zgen oh-my-zsh plugins/brew
  zgen oh-my-zsh plugins/colored-man
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/github
  zgen oh-my-zsh plugins/osx
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/yarn

  zgen load ascii-soup/zsh-url-highlighter
  zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train
  zgen load chrissicool/zsh-256color
  zgen load sharat87/pip-app
  zgen load softmoth/zsh-vim-mode
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-syntax-highlighting

  zgen save
fi


### custom

for F in $HOME/src/brev/dotfiles/zsh/*.zsh; do
  source $F;
done

