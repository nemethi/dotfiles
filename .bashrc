# number of trailing  directory  components
export PROMPT_DIRTRIM=2

 # get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        echo " (${BRANCH})"
    else
        echo ""
    fi
}

# include alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

