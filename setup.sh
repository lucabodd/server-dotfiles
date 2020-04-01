os = $(uname)

if [[ $os == 'OpenBSD' ]]; then
    $pkg_cmd = "pkg_add"
elif [[ $os == 'Linux' ]]; then
    $pkg_cmd = "apt-get install"
fi

eval "sudo $pkg_cmd zsh"
eval "sudo $pkg_cmd git"
eval "sudo $pkg_cmd tmux"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
wget -O ~/.tmux.conf https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.tmux.conf
wget -O ~/.zshrc https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.zshrc
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/lucabodd/server-dotfiles/master/.ssh/authorized_keys
