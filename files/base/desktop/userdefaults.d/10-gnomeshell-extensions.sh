#!/usr/bin/env sh

echo 'Activate useful GNOME shell extensions ...'

# - https://extensions.gnome.org/extension/2/move-clock/
# - https://extensions.gnome.org/extension/708/panel-osd/
# - https://extensions.gnome.org/extension/873/overview-all-windows/
# - https://extensions.gnome.org/extension/1015/gravatar/
# - https://extensions.gnome.org/extension/1065/docker-status/

for extension in 2 708 873 1015 1065; do
    gnome-shell-extension-tool --disable-extension "$extension"
done

# - https://extensions.gnome.org/extension/120/system-monitor/
# - https://extensions.gnome.org/extension/723/pixel-saver/
# - https://extensions.gnome.org/extension/744/hide-activities-button/
# - https://extensions.gnome.org/extension/779/clipboard-indicator/
# - https://extensions.gnome.org/extension/800/remove-dropdown-arrows/
# - https://extensions.gnome.org/extension/1108/add-username-to-top-panel/
# - https://extensions.gnome.org/extension/1143/logout-button/

for extension in 120 723 744 779 800 1108 1143; do
    gnome-shell-extension-tool --enable-extension "$extension"
done
