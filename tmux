set -g prefix C-a
unbind C-b
set -sg escape-time 1
set -g base-index 1
setw -g pane-base-index 1
bind r source-file ~/.tmux.conf \; display "Reloaded!"
bind C-a send-prefix
bind | split-window -h
bind - split-window -v
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+
bind H resize-pane -L 5
bind J resize-pane -D 5
bind K resize-pane -U 5
bind L resize-pane -R 5
setw -g mode-mouse off
set -g default-terminal "screen-256color"
# alternatively, check file exists before sourcing it in tmux.conf
if-shell "test -f ~/.tmuxtheme.conf" "source ~/.tmuxtheme.conf"
