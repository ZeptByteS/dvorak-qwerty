More simple way to use dvorak-qwerty on Linux 
------

![](https://github.com/ZeptByteS/dvorak-qwerty/blob/master/dvorak-qwerty.png)


In this layout, you can input Dvorak layout symbols while Capslock is on. And turn it off to switch back to Qwerty layout.  Any key will always work as Qwerty when pressed with Control, Alt or Super regardless of the state of the Capslock. For that, Caps lock can't be used for input uppercase.  

I created configuration files that using [ RedirectKeys ] to use Qwerty-hot keys few months ago. But it had some problems in some applications because of the RedirectKeys function. 
Since this layout won't use RedirectKeys when press modifier keys, I think you can use these modifier keys in  all programs successfully.

But, there is one problem. Since 'a' and 'm' is placed same position in Dvorak and Qwerty, it can't use as four or six levels. eg, when XKB see the symbols like [a,A,a,A], XKB automatically translated it to [a,A] and set it's type to "ALPHABETIC". So, while Capslock is on, press "aoeui", XKB will input "Aoeui". 

To avoid this problem, I haven't find a way except use RiderectKeys. And because of the RedirectKeys, some programs may be won't recognises 'a' and 'm' keys except use these keys with modifiers. In my case, the KeePass2 that run on the mono runtime, I can't input 'a' and 'm'  when Capslock is on.

You can input 'a' and 'm' with ibus-mozc or standard Dvorak layouts if your favorite programs don't recognises these keys.

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
