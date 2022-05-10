#!/bin/bash

echo "Creating tmux sessions"


# Create music session
tmux new-session -d -s "music"
tmux rename-window 'cmus'
tmux send-keys -t "cmus" "cmus" Enter

# Create projects session
tmux new-session -d -s "projects"
tmux rename-window "main"
tmux split-window -h

# Create work session
tmux new-session -d -s "work"
tmux rename-window "main"
tmux split-window -h

# Create misc session
tmux new-session -d -s "misc"
tmux rename-window "main"

# Select projects session
tmux attach-session -t "projects"
tmux select-pane -t 0


