if [[ ${EUID} == 0 ]] ; then
    export PS1="\n\[\e[02;36m\]\h \[\e[00m\]\[\e[01;34m\]\w\n#\[\e[00m\] "
else
    export PS1="\n\[\e[02;36m\]\h \[\e[00m\]\[\e[01;34m\]\w\n$\[\e[00m\] "
fi
