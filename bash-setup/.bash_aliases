# general
alias mkcd='f () { mkdir "$@" && cd "$@"; }; f'
alias reboot='echo "Rebooting in 10 seconds - abort with CTRL+C" && sleep 10 && reboot'
alias watcha='watch -c ' # "watch alias"
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
alias ll='ls -alF'

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
alias grbom='git rebase origin/$(git_main_branch)' # "git rebase origin master" (or main) (previously grbud='git rebase upstream/develop', from Imint times)
alias gum='gco main && gfo && grbom' # "git update main"
# to override ghost script
alias gs='git status'

# lxd & lxc
alias lxl='lxc list -c ns4tDl'

# juju
alias j='juju'
alias ja='juju actions'
alias jam='juju add-model'
alias jc='juju controllers'
alias jcf='juju config'
alias jdbg='juju debug-log'
alias jd='juju deploy'
alias jm='juju models --all'
alias jmg='juju models --all | grep -i'
alias js='juju status --color --relations'
alias jssh='juju ssh'
alias wjs='watch -c juju status --color --relations'
alias jsw='juju switch'
alias jswll='juju switch localhost-localhost'
alias jswk='juju switch dwellir-sodertalje' # "switch to Kista" post move
alias jsws='juju switch dwellir-sodertalje'
alias jswp='juju switch dwellir2-pionen'
alias jswt='juju switch dwellir-tunis'
alias jswl='juju switch dwellir-lagos'
alias jswj='juju switch jaas'
alias jra='juju run-action --wait'
alias jref='juju refresh'
alias jrel='juju relate'
alias jres='juju resolve'
alias jrl='juju remote list'
alias jmclog-debug='juju model-config logging-config="<root>=WARNING;unit=DEBUG"'
alias jmclog-info='juju model-config logging-config="<root>=WARNING;unit=INFO"'
alias jcf-pol-ser='juju config polkadot --format json | jq ".settings.\"service-args\".value"'
alias jfm='/usr/bin/python3 /home/jakob/versioned/ops/juju/scripts/find-models.py --pattern $1'
alias jfi='/usr/bin/python3 /home/jakob/versioned/ops/juju/scripts/find-instance.py -a $1'

# docker
alias dp='docker ps -a'
alias di='docker images -a'
alias dr='docker rm '
