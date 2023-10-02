#!/usr/bin/env sh

echo 'Restore user files provided by skeleton /etc/skel/.config/ ...'
cp -rv /etc/skel/.config ${HOME}/

if which git > /dev/null ; then
    echo 'Updating global Git configuration ...'
    git config --global user.name "$(getent passwd ${USER} | cut -d: -f5 | cut -d, -f1)"
    git config --global --list
fi
