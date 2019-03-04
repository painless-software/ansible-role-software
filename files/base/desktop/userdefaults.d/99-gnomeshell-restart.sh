#!/usr/bin/env sh

echo 'Restart GNOME Shell to activate changes ...'
dbus-send --session --type=method_call \
          --dest=org.gnome.Shell /org/gnome/Shell \
          org.gnome.Shell.Eval string:"global.reexec_self();"
