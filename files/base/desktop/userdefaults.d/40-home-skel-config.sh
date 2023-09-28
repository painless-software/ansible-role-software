#!/usr/bin/env sh

echo 'Restore user files provided by skeleton /etc/skel/.config/ ...'
cp -rv /etc/skel/.config ${HOME}/
