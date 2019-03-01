#!/usr/bin/env sh
#
# Organization defaults for desktop computers.
#
# This file is managed by ansible-role-software
# (c) 2019 Painless Software, https://painless.software
# License: GPL v3

for script in /opt/*/userdefaults.d/*; do
    if [ -x ${script} ]; then
        ${script}
    fi
done
