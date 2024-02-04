#!/usr/bin/env bash
#
# Organization defaults for desktop computers.
#
# This file is managed by ansible-role-software
# (c) Painless Software, https://painless.software
# License: GPL v3

log() {
    color='\e[1;35m'  # magenta
    reset='\e[0m'
    echo -e "${color}$@${reset}"
}

SCRIPTS=$(dirname $(realpath $0))/userdefaults.d

LEVELS=$(echo $@ | xargs)
if test -z "${LEVELS}"; then
    LEVELS=$(ls -1 ${SCRIPTS}/*.sh | sed -E 's#.*/(..)-(.*)\.sh$#\1#' | xargs)
fi

COUNT=0
for level in ${LEVELS}; do
    script=$(realpath ${SCRIPTS}/${level}-*.sh)

    if [ -x "${script}" ]; then
        log "Executing $(basename ${script}) ..."
        ${script}
        (( COUNT+=1 ))
    fi
done

if test ${COUNT} -gt 0; then
    log "${COUNT} scripts executed."
else
    log "Usage: ${0##*/} [level [level [...]]]"
    echo 'Reset all userdefaults, or selected ones by level.'
    echo
    ls -1 ${SCRIPTS}/*.sh | sed -E 's#.*/(..)-(.*)\.sh$#\1 \2#'
    exit 0
fi
