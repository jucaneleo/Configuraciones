#!/bin/zsh

tmux_session () {
	session=$1
	path=$2
	tmux new-session -d -s "$session"

	window=0
	tmux rename-window -t "$session":$window 'vim'
	tmux send-keys -t "$session":"$window" 'cd '  "$path" C-m
	tmux send-keys -t "$session":"$window" 'source ../linuxEnv/bin/activate' C-m
	tmux send-keys -t "$session":"$window" 'nvim .' C-m

	window=1
	tmux new-window -t "$session":"$window" -n 'server'
	tmux send-keys -t "$session":"$window" 'source /home/zamyaza/progra/portafolio/linuxEnv/bin/activate'  C-m
	tmux send-keys -t "$session":"$window" 'cd /home/zamyaza/progra/portafolio/ComparteDuoc' C-m
	tmux send-keys -t "$session":"$window" 'python manage.py runserver' C-m

	tmux a
}

tmux_session comparteDuoc /home/zamyaza/progra/portafolio/ComparteDuoc/
