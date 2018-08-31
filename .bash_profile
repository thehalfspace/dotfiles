# activate colors in terminal
export CLICOLOR=1

# change the colors of terminal
export LSCOLORS=gxfxcxdxbxegedabagaced

# use sublime text from terminal
alias sublime="open -a /Applications/Sublime\ Text.app"

# added by Miniconda3 4.3.21 installer
export PATH="/Users/prith/miniconda3/bin:$PATH"

# git personalization
. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\u ✌️ \W$ '

# shortcut alias
alias workcode='cd /Users/prith/Google\ Drive\ File\ Stream/My\ Drive/Work/Code' 
alias prith='ssh -l prith flux-login.arc-ts.umich.edu'
