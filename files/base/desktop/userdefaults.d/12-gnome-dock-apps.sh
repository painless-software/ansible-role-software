#!/usr/bin/env sh

# HINT: run `gsettings get org.gnome.shell favorite-apps` for current config
dock_apps="[
    'org.gnome.Nautilus.desktop',
    'firefox_firefox.desktop',
    'google-chrome.desktop',
    'org.gnome.Geary.desktop',
    'org.gnome.Terminal.desktop',
    'codium_codium.desktop',
    'org.gnome.Rhythmbox3.desktop'
]"

echo 'Set GNOME dock application shortcuts ...'
gsettings set org.gnome.shell favorite-apps "$dock_apps"
