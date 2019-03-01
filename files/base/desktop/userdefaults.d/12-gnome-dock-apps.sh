#!/usr/bin/env sh

dock_apps="[
    'org.gnome.Nautilus.desktop',
    'chromium-browser.desktop',
    'firefox.desktop',
    'org.gnome.Geary.desktop',
    'code.desktop',
    'org.gnome.Terminal.desktop',
    'rhythmbox.desktop'
]"

echo 'Set GNOME dock application shortcuts ...'

gsettings set org.gnome.shell favorite-apps "$dock_apps"
