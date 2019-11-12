# number of trailing  directory  components
export PROMPT_DIRTRIM=2

 # get current branch in git repo
parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        echo -ne "\n└(${BRANCH})"
    else
        echo -n ""
    fi
}


if [ "$color_prompt" = yes ]; then
    PS1='[${debian_chroot:+($debian_chroot)}\[\e[96m\]\A\[\e[0m\] \[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;93m\]\w\[\033[00m\]]\[\e[31m\]$(parse_git_branch)\[\e[0m\]: '
else
    PS1='[${debian_chroot:+($debian_chroot)}\A \u@\h \w]$(parse_git_branch): '
fi
unset color_prompt force_color_prompt


# include alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

