More simple way to use dvorak-qwerty on Linux 
------

![](https://github.com/ZeptByteS/dvorak-qwerty/blob/master/dvorak-qwerty.png)


In this layout, you can input dvorak layout symbols while capslock is on. Turn it off to switch back to qwerty layout. Any key will work as Qwerty always when pressed with Control, Alt or Super regardless of the state of the capslock.

Installation
------

\#./install.sh

It will save your xkb configuration in archive named xkb-backup.tar.gz located in your working directory and will install the new configuration files.

After reboot, you can choose the Dvorak-Qwerty layout from text entry setting:




Issues with Gnome
------

Gnome may override some keys in some cases that existed in other levels that did not interfere in previous configurations.

You can clear these bindings with the help of dconf-editor.

Steps:

1. Install dconf-editor for your distro

2. Open dconf-editor

3. Browse through /org/gnome/desktop/input-sources and find xkb-options.

4. Remove from the string the record that overrides your keymap
