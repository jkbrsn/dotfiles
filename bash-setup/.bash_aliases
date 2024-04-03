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
alias l='ls -lah'
alias ll='ls -alF'
alias lg='ls -lah | grep -i'

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
alias j3='juju_33'
alias ja='juju_33 actions'
alias jam='juju_33 add-model'
alias jc='juju_33 controllers'
alias jcf='juju_33 config'
alias jcf-pol-ser='juju_33 config polkadot --format json | jq ".settings.\"service-args\".value"'
alias jdbg='juju_33 debug-log'
alias jd='juju_33 deploy'
alias jfm='/usr/bin/python3 /home/jakob/versioned/ops/juju/scripts/find-models.py --pattern $1'
alias jfi='/usr/bin/python3 /home/jakob/versioned/ops/juju/scripts/find-instance.py -a $1'
alias jint='juju_33 integrate'
alias jm='juju_33 models --all'
alias jmclog-debug='juju_33 model-config logging-config="<root>=WARNING;unit=DEBUG"'
alias jmclog-info='juju_33 model-config logging-config="<root>=WARNING;unit=INFO"'
alias jmg='juju_33 models --all | grep -i'
alias js='juju_33 status --color --relations'
alias wjs='watch -c juju_33 status --color --relations'
alias jscp='juju_33 scp'
alias jssh='juju_33 ssh'
alias jsw='juju_33 switch'
alias jswa='juju_33 switch jc-aws.dwellir.tech'
alias jswk='juju_33 switch site-kista'
alias jswl='juju_33 switch dwellir-lagos'
alias jswlab='juju_33 switch dwellir-lab'
alias jswll='juju_33 switch local'
alias jswp='juju_33 switch site-pionen'
alias jswt='juju_33 switch site-tunis'
alias jr='juju_33 run'
alias jra='juju run-action --wait'
alias jref='juju_33 refresh'
alias jrel='juju relate'
alias jres='juju_33 resolve'
alias jrl='juju_33 remote list'

function jj() {
    juju_33 ssh $1 -- journalctl -f -u $2
}

# docker
alias dp='docker ps -a'
alias di='docker images -a'
alias dr='docker rm '
