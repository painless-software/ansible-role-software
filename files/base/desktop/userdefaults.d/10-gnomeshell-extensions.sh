#!/usr/bin/env sh

# - https://extensions.gnome.org/extension/2/move-clock/
# - https://extensions.gnome.org/extension/708/panel-osd/
# - https://extensions.gnome.org/extension/873/overview-all-windows/
# - https://extensions.gnome.org/extension/1015/gravatar/
# - https://extensions.gnome.org/extension/1065/docker-status/

# extension names = folder names from /usr/local/share/gnome-shell/extensions/
DISABLE_EXTENSIONS="\
    Move_Clock@rmy.pobox.com \
    panel-osd@berend.de.schouwer.gmail.com \
    OverviewAllWindows@amiller27 \
    gravatar@jr.rlabs.io \
    docker_status@gpouilloux"

echo 'Ensure unwanted GNOME Shell extensions are disabled ...'
for extension in ${DISABLE_EXTENSIONS}; do
    gnome-shell-extension-tool --disable-extension "$extension"
done

# - https://extensions.gnome.org/extension/120/system-monitor/
# - https://extensions.gnome.org/extension/723/pixel-saver/
# - https://extensions.gnome.org/extension/744/hide-activities-button/
# - https://extensions.gnome.org/extension/779/clipboard-indicator/
# - https://extensions.gnome.org/extension/800/remove-dropdown-arrows/
# - https://extensions.gnome.org/extension/1108/add-username-to-top-panel/
# - https://extensions.gnome.org/extension/1143/logout-button/

# extension names = folder names from /usr/local/share/gnome-shell/extensions/
ENABLE_EXTENSIONS="\
    system-monitor@paradoxxx.zero.gmail.com \
    pixel-saver@deadalnix.me \
    Hide_Activities@shay.shayel.org \
    clipboard-indicator@tudmotu.com \
    remove-dropdown-arrows@mpdeimos.com \
    add-username-toppanel@brendaw.com \
    LogOutButton@kyle.aims.ac.za"

echo 'Ensure desired GNOME Shell extensions are enabled ...'
for extension in ${ENABLE_EXTENSIONS}; do
    gnome-shell-extension-tool --enable-extension "$extension"
done

echo 'Restart GNOME Shell to activate changes ...'
dbus-send --session --type=method_call \
          --dest=org.gnome.Shell /org/gnome/Shell \
          org.gnome.Shell.Eval string:"global.reexec_self();"
