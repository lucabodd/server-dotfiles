os = $(uname)

if [[ $os == 'OpenBSD' ]]; then
    $pkg_cmd = "pkg_add"
elif [[ $os == 'Linux' ]]; then
    $pkg_cmd = "apt-get install"
fi

sudo $pkg_cmd zsh
sudo $pkg_cmd git
sudo $pkg_cmd tmux
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/lucabodd/server-dotfiles.git ~/
