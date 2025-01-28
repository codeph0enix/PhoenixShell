me of the session
SESSION_NAME="default"

# Check if the session already exists
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
	# Create a new session and name the first window
		tmux new-session -d -s $SESSION_NAME -n main

	# Split the window into a top and bottom half
		tmux split-window -v -t $SESSION_NAME:main.1

	# Split the bottom half into left and right halves
		tmux split-window -h -t $SESSION_NAME:main.2
	# Resize the top pane to make it slightly bigger
		tmux resize-pane -t $SESSION_NAME:main.2 -y 4
	# Launch htop in bottom right	
		tmux send-keys -t $SESSION_NAME:main.3 'htop' C-m
	# Optional: Select the top pane by default
		tmux select-pane -t $SESSION_NAME:main.1
fi

# Attach to the session
tmux attach-session -t $SESSION_NAME

