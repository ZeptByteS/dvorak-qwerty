Dvorak Qwerty for Linux XKB configuration files
------

These keymaps using first level to redirect to different scan-code in inet "evdev" section that won't used in ordinary keyboard. If your keyboard has some media keys and uses these scan-codes, you need change "what the scan-code redirect to" in symbols/us and uncomment the scan-code you need in symbols/inet.

any keys work as Qwerty when press with Control, Alt or Super.

3-7 levels works as same as 1-5 levels of original layout.

Installation
------

\#./install.sh

It will save your xkb configuration in archive named xkb-backup.tar.gz located in your working directory and will install the new configuration files.

after reboot, you can choose new input sources from text entry setting:


+ Dvorak-Qwerty
+ Dvorak-Qwerty simplified (no dead keys)
+ Dvorak-Qwerty, international with dead keys
+ Dvorak-Qwerty alternative international no dead keys
+ Dvorak-Qwerty, classic
+ Dvorak-Qwerty, programmer



Issues with Gnome
------

Gnome may override some keys in some cases that existed in other levels that did not interfere in previous configurations.

You can clear these bindings with the help of dconf-editor.

Steps:

1. Install dconf-editor for your distro

2. Open dconf-editor

3. Browse through /org/gnome/desktop/input-sources and find xkb-options.

4. Remove from the string the record that overrides your keymap

