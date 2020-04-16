os=$(uname)

#TMUX
if [[ $os == 'OpenBSD' ]]; then
    wget -O ~/.tmux.conf https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.tmux.conf.obsd
elif [[ $os == 'Linux' ]]; then
    wget -O ~/.tmux.conf https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.tmux.conf.lin
fi

#misc
wget -O ~/.zshrc https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.zshrc
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.ssh/authorized_keys
wget -O ~/.profile https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.profile
wget -O ~/.oh-my-zsh/custom/themes/minimal.zsh-theme https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/minimal.zsh-theme
source ~/.zshrc

