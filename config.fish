# disable greeting message
set -g fish_greeting

# set theme to be dracula
fish_config theme choose "Dracula Official"

# add wezterm command
set -gx PATH $PATH /Applications/WezTerm.app/Contents/MacOS

# set the bat theme
set -gx BAT_THEME "Dracula"


# use shell integration on iterm
if test $TERM_PROGRAM = iTerm.app
    test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end


starship init fish | source

