os=$(uname)

if [[ $os == 'OpenBSD' ]]; then
    pkg_cmd="pkg_add"
elif [[ $os == 'Linux' ]]; then
    pkg_cmd="apt-get install -y"
fi

#package installation
eval "sudo $pkg_cmd zsh"
eval "sudo $pkg_cmd git"
eval "sudo $pkg_cmd tmux"

#oh my zsh & plugins
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/custom/plugins/zsh-autosuggestions
wget -O

#TMUX
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
if [[ $os == 'OpenBSD' ]]; then
    wget -O ~/.tmux.conf https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.tmux.conf.obsd
elif [[ $os == 'Linux' ]]; then
    wget -O ~/.tmux.conf https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.tmux.conf.lin
fi

#misc
wget -O ~/.zshrc https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.zshrc
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.ssh/authorized_keys
wget -O ~/.profile https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.profile

#final commands
zsh

