# general
alias mkcd='f () { mkdir "$@" && cd "$@"; }; f'
alias reboot='echo "Rebooting in 10 seconds - abort with CTRL+C" && sleep 10 && reboot'
alias watcha='watch -c -n 1 ' # "watch alias"
alias ht='history | tail'
alias python='python3'
alias n='nvim'

# cd
alias '..'='cd ..'
alias '...'='cd ../..'
alias '....'='cd ../../..'
alias '.....'='cd ../../../..'

# ls
alias l='ls -lah'
alias la='ls -A'
alias lsa='ls -A'
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
alias gdss='git --no-pager diff --shortstat'
alias glp='git log --pretty=format:"* %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias gl='git --no-pager log --pretty=format:"* %Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias gl5='gl -5'
alias gl10='gl -10'
alias gl20='gl -20'
alias gl40='gl -40'
alias gpdel='git push --delete'
alias gpl='git pull'
alias gpo='git push origin "$(git_current_branch)"'
alias gpfo='git push origin "$(git_current_branch)" --force'
alias gshn='git show --name-only'
alias grbom='git rebase origin/$(git_main_branch)' # "git rebase origin master" (or main) (previously grbud='git rebase upstream/develop', from Imint times)
alias grbod='git rebase origin/$(git_develop_branch)' # "git rebase origin develop"
alias gum='gco main && gfo && grbom' # "git update main"
alias gud='gco develop && gfo && grbod' # "git update develop"
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
alias jcf-pol-ser='juju config polkadot --format json | jq ".settings.\"service-args\".value"'
alias jdbg='juju debug-log'
alias jd='juju deploy'
alias jfm='/usr/bin/python3 /home/jakob/versioned/ops/juju/scripts/find-models.py --pattern $1'
alias jfi='/usr/bin/python3 /home/jakob/versioned/ops/juju/scripts/find-instance.py -a $1'
alias jint='juju integrate'
alias jm='juju models --all'
alias jmclog-debug='juju model-config logging-config="<root>=WARNING;unit=DEBUG"'
alias jmclog-info='juju model-config logging-config="<root>=WARNING;unit=INFO"'
alias jmg='juju models --all | grep -i'
alias jo='juju operations'
alias js='juju status --color --relations'
alias wjs='watch -c juju status --color --relations'
alias jscp='juju scp'
alias jssh='juju ssh'
alias jsw='juju switch'
alias jswk='juju switch site-kista'
alias jswl='juju switch site-lagos'
alias jswlab='juju switch dwellir-lab'
alias jswll='juju switch local'
alias jswn='juju switch neverland'
alias jswp='juju switch site-pionen'
alias jsws='juju switch site-singapore'
alias jswt='juju switch site-tunis'
alias jr='juju run'
alias jra='juju run-action --wait'
alias jref='juju refresh'
alias jrel='juju relate'
alias jres='juju resolve'
alias jrl='juju remote list'

function jj() {
    juju ssh $1 -- journalctl -f -u $2
}
function jgm() {
    juju grant jandersson@external admin $(juju show-model --format json | jq -r '.[].name' | head -n 1)
}

# docker
alias dp='docker ps -a'
alias di='docker images -a'
alias dr='docker rm '
