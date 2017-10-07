More simple way to use dvorak-qwerty on Linux (Ubuntu Gnome 16.04 LTS)
------

![](https://github.com/ZeptByteS/dvorak-qwerty/blob/ScrollLock_to_switch/scrolllock.png)


In this layout, you can input Dvorak layout symbols while ScrollLock is on. And turn it off to switch back to Qwerty layout.  Any key will always work as Qwerty when pressed with Control, Alt or Super regardless of the state of the ScrollLock.

このレイアウトでは、ScrollLockがオンのときにDvorakレイアウトシンボルを入力できます。 Qwertyのレイアウトに戻すにはそれをオフにします。 ScrollLockの状態にかかわらず、Control、Alt、またはSuperと押された場合、どのキーも常にQwertyとして機能します。

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
