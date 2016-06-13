# Z Shell Run Commands
# Joshua Bird © 2014

# @}~}~~~


# basic
setopt no_beep # be quiet
setopt auto_cd # if you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt interactive_comments # allow comments even in interactive shells (especially for Muness)

# path
export PATH=/usr/local/bin:/usr/local/nginx/sbin:/usr/local/sbin:/usr/sbin:/sbin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
 #history
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.zsh_history
setopt append_history # allow multiple terminal sessions to all append to one zsh command history
setopt inc_append_history # add comamnds as they are typed, don't wait until shell exit
setopt hist_ignore_dups # do not write events to history that are duplicates of previous events
setopt hist_find_no_dups # when searching history don't display results already cycled through twice
setopt hist_reduce_blanks # remove extra blanks from each command line being added to history
setopt extended_history # include more information about when the command was executed, etc

# completion
autoload -U compinit && compinit
setopt complete_in_word # allow completion from within a word/phrase
setopt always_to_end # when completing from the middle of a word, move the cursor to the end of the word
unsetopt menu_complete # do not autoselect the first completion entry
setopt auto_menu # show completion menu on successive tab press; needs unsetop menu_complete to work
setopt extended_glob # treat #, ~, and ^ as part of patterns for filename generation
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s' # make the list prompt friendly
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s' # make the selection prompt friendly when there are a lot of choices
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # match uppercase from lowercase
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # add simple colors to kill
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*:corrections' format '%B%d (errors: %e)%b'
zstyle ':completion:*' group-name ''

# prompt
autoload -U colors && colors
PROMPT="%{^[[38;5;195m%}[%{^[[38;5;111m%}%n%{^[[38;5;195m%}@%{^[[38;5;166m%}%m%{^[[38;5;195m%}:%{^[[38;5;192m%}%~%{^[[38;5;195m%}]%{^[[38;5;198m%}%#%{^[[38;5;83m%} ❯ %{^[[0m%}"
TERM='xterm-256color'

# aliases
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl" # alias for the Sublime application
alias sz="source ~/.zshrc" # alias to source the .zshrc file without reinitialising the shell
alias ez="vim ~/.zshrc" # alias to edit .zshrc file
alias ls="ls -FChl" # F gives symbols on filenames; C colorises; h gives filesize units; l gives long list
alias -g chrome="/Applications/Chrome.app/Contents/MacOS/Google\ Chrome"
alias -g nginx="/usr/local/nginx/sbin/nginx"



export WORKON_HOME=/var/.virtualenvs
#export WORKON_HOME=$HOME/.virtualenvs:$WORKON_HOME
export PROJECT_HOME=/var/
source /usr/local/bin/virtualenvwrapper.sh

ls

# @}~}~~~
