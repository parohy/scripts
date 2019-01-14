#!/bin/bash

echo "Copying git-completion script..."
cp .git-completion ~/

echo "Creating .bash_profile..."
touch .bash_profile

echo '
if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion
fi

function parse_git_dirty {
status=$(git status --porcelain -b 2> /dev/null)
if [[ -n $status ]]; then
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo -n "*"
fi
}
function parse_git_stash {
status=$(git status --porcelain -b 2> /dev/null)
if [[ -n $status ]]; then
    [[ $(git stash list 2> /dev/null | tail -n1) != "" ]] && echo "^"
fi
}
function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

PS1="\[\033[35m\]\t\[\033[36m\]|\u \[\033[33;1m\]\w \[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_dirty)\[\033[32m\]\$(parse_git_stash)\[\033[00m\] $ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

PATH="$PATH:$HOME/.executes/bin"

export PATH
' > .bash_profile

mv .bash_profile ~/

echo "Profile install done!"