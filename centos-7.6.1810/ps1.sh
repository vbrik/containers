if [[ ${EUID} == 0 ]] ; then
    export PS1="\[\e[37m\]\[\e[7m\]\h \[\e[0m\] \[\e[01;34m\]\W\n#\[\e[00m\] "
else
    export PS1="\[\e[37m\]\h \[\e[01;34m\]\W\n\$\[\e[00m\] "
fi
