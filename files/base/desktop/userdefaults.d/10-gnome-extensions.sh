#!/usr/bin/env sh

# - https://extensions.gnome.org/extension/744/hide-activities-button/
# - https://extensions.gnome.org/extension/779/clipboard-indicator/
# - https://extensions.gnome.org/extension/1108/add-username-to-top-panel/
# - https://extensions.gnome.org/extension/2224/easy-docker-containers/
# - https://extensions.gnome.org/extension/3010/system-monitor-next/

# NOTE: extension names = folder names from `/usr/local/share/gnome-shell/extensions/`
# SEE ALSO: `gsettings get org.gnome.shell enabled-extensions`

DISABLE_EXTENSIONS="\
    easy_docker_containers@red.software.systems \
    "
ENABLE_EXTENSIONS="\
    Hide_Activities@shay.shayel.org \
    clipboard-indicator@tudmotu.com \
    add-username-toppanel@brendaw.com \
    system-monitor-next@paradoxxx.zero.gmail.com \
    "

echo 'Ensure unwanted GNOME Shell extensions are disabled ...'
for extension in ${DISABLE_EXTENSIONS}; do
    gnome-extensions disable "$extension"
done

echo 'Ensure desired GNOME Shell extensions are enabled ...'
for extension in ${ENABLE_EXTENSIONS}; do
    gnome-extensions enable "$extension"
done
