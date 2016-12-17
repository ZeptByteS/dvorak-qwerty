More simple way to use dvorak-qwerty on Linux (Ubuntu Gnome 16.04 LTS)
------

![](https://github.com/ZeptByteS/dvorak-qwerty/blob/master/dvorak-qwerty.png)


In this layout, you can input Dvorak layout symbols while Capslock is on. And turn it off to switch back to Qwerty layout.  Any key will always work as Qwerty when pressed with Control, Alt or Super regardless of the state of the Capslock. For that, Caps lock can't be used for input uppercase.  

I created configuration files that using [ RedirectKeys ] to use Qwerty-hot keys few months ago. But it had some problems in some applications because of the RedirectKeys function. 
Since this layout won't use RedirectKeys when press modifier keys, I think you can use these modifier keys in  all programs successfully.

But, there is one problem. Since 'a' and 'm' is placed same position in Dvorak and Qwerty, it can't use as four or six levels. eg, when XKB see the symbols like [a,A,a,A], XKB automatically translated it to [a,A] and set it's type to "ALPHABETIC". So, while Capslock is on, press "aoeui", XKB will input "Aoeui". 

To avoid this problem, I haven't find a way except use RiderectKeys. And because of the RedirectKeys, some programs may be won't recognises 'a' and 'm' keys except use these keys with modifiers. In my case, the KeePass2 that run on the mono runtime, I can't input 'a' and 'm'  when Capslock is on.

You can input 'a' and 'm' with ibus-mozc or standard Dvorak layouts if your favorite programs don't recognises these keys.

このレイアウトでは、CapslockがオンのときにDvorakレイアウトシンボルを入力できます。 Qwertyのレイアウトに戻すにはそれをオフにします。 Capslockの状態にかかわらず、Control、Alt、またはSuperで押された場合、どのキーも常にQwertyとして機能します。そのため、大文字の入力にはCaps Lockを使用できません。

私は数か月前に[RedirectKeys]を使ってQwertyホットキーを使用する設定ファイルを作成しました。しかし、RedirectKeys関数のためにいくつかのアプリケーションでいくつかの問題がありました。このレイアウトは修飾キーを押してもRedirectKeysを使用しないので、これらの修飾キーはすべてのプログラムでうまく使えると思います。

しかし、1つの問題があります。 DvorakとQwertyでは 'a'と 'm'が同じ位置に配置されているため、4つまたは6つのレベルとして使用することはできません。たとえば、XKBが[a、A、a、A]のようなシンボルを参照すると、XKBはそれを自動的に[a、A]に変換し、そのタイプを "ALPHABETIC"に設定します。だから、Capslockがオンのときに "aoeui"を押すと、XKBは "Aoeui"を入力します。

この問題を避けるために、私はRiderectKeysを使う以外の方法は見つけていません。また、RedirectKeysのために、一部のプログラムでは、修飾キーでこれらのキーを使用する以外は、「a」キーと「m」キーを認識しないことがあります。私の場合、モノラルランタイムで動作するKeePass2は、Capslockがオンのときに「a」と「m」を入力できません。

お気に入りのプログラムがこれらのキーを認識しない場合は、ibus-mozcまたは標準のDvorakレイアウトで 'a'と 'm'を入力できます。

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
