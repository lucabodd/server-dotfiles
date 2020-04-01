tmux new -s $(hostname | awk -F '.' '{print $1}')
