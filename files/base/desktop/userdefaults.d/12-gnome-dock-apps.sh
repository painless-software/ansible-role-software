#!/usr/bin/env sh

# HINT: run `gsettings get org.gnome.shell favorite-apps` for current config
dock_apps="[
    'org.gnome.Nautilus.desktop',
    'chromium-browser.desktop',
    'firefox.desktop',
    'org.gnome.Geary.desktop',
    'org.gnome.Terminal.desktop',
    'codium.desktop',
    'rhythmbox.desktop'
]"

echo 'Set GNOME dock application shortcuts ...'
gsettings set org.gnome.shell favorite-apps "$dock_apps"
