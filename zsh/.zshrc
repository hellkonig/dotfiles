# .zshrc
#fpath=( "$HOME/.zfunctions" $fpath )
#fpath=( "$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-sindresorhus-SLASH-pure.git/pure.zsh" $fpath )
#fpath=( "$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-sindresorhus-SLASH-pure.git/async.zsh" $fpath )
# antigen-- kinda a vundle/vim for zsh
source ~/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
# antigen bundle git
#source ~/.zfunctions/async
#source ~/.zfunctions/prompt_pure_setup
# above 2 lines are symlinked from the .zsh files located in an antigen repo,
# but the links themselves are in ~/.zfunctions hence the commented-out antigen call

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/apium/.zshrc'

autoload -Uz compinit && compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install

# prompt init
autoload -Uz promptinit && promptinit

# colors
autoload -U colors && colors

# alias
alias ls='ls --color=auto'

# default user
#DEFAULT_USER=`$USER`

# path for ruby gems
export PATH=$PATH:/home/apium/.gem/ruby/2.4.0/bin

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
