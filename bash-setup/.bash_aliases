# general
alias mkcd='f () { mkdir "$@" && cd "$@"; }; f'
alias reboot='echo "Rebooting in 10 seconds - abort with CTRL+C" && sleep 10 && reboot'
alias watcha='watch -c '
alias ht='history | tail'

# cd
alias '..'='cd ..'
alias '...'='cd ../..'
alias '....'='cd ../../..'
alias '.....'='cd ../../../..'

# ls
alias la='ls -A'
alias lsla='ls -la'
alias l='ls -lah'

# git
# imported from oh-my-zsh plugin
if [ -f ~/.git_aliases ]; then
    . ~/.git_aliases
fi
# self-made specializations
alias gbac='git branch -a --contains'
alias gbo='git branch --remote | grep -i origin/'
alias gdelb='f() {git push --delete origin "$1" && git branch -D "$1"};f'
alias gdn='git diff --name-only'
alias gdnh='git diff --name-only HEAD'
alias gdnh1='git diff --name-only HEAD HEAD~1'
alias gdnh2='git diff --name-only HEAD HEAD~2'
alias gdnh3='git diff --name-only HEAD HEAD~3'
alias gl='git log --pretty=format:"* %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias gpdel='git push --delete'
alias gpl='git pull'
alias gpo='git push origin "$(git_current_branch)"'
alias gpfo='git push origin "$(git_current_branch)" --force'
alias gshn='git show --name-only'
alias grbom='git rebase origin/master' # "git rebase origin master" (previously grbud='git rebase upstream/develop', from Imint times)
alias gum='gcm && gfo && grbom' # "git update master"
# to override ghost script
alias gs='git status'

# lxd & lxc
alias lxl='lxc list -c ns4tDl'

# juju
alias j='juju'
alias jc='juju controllers'
alias jdbg='juju debug-log'
alias jd='juju deploy'
alias jm='juju models'
alias jma='juju models --all'
alias js='juju status --color --relations'
alias wjs='watch -c juju status --color --relations'
alias jsw='juju switch'
alias jswll='juju switch localhost-localhost'
alias jsws='juju switch dwellir-sodertalje'
alias jswp='juju switch dwellir2-pionen'
alias jswt='juju switch dwellir-tunis'
alias jswl='juju switch dwellir-lagos'
alias jswj='juju switch jaas'
alias jra='juju remove-application'
alias jref='juju refresh'
alias jrel='juju relate'
alias jres='juju resolve'
alias jrl='juju remote list'

# docker
alias dp='docker ps -a'
alias di='docker images -a'
alias dr='docker rm '
