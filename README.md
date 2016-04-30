Dvorak-Qwerty XKB configuration files for Linux
------

![](https://github.com/ZeptByteS/dvorak-qwerty/blob/master/dvorak-qwerty.png)

These keymaps use the first level for redirection to different scan-codes in inet "evdev" section that aren't used in ordinary keyboards. However, if a keyboard has some media keys that use these scan-codes, you will have to change the redirection of the conflicting scan-codes in "symbols/us" and uncomment them in "symbols/inet".

Any key will work as Qwerty when pressed with Control, Alt or Super.

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



Change scan-codes
------

To identify key codes, run the following command then press all media keys

    $ xev | sed -n 's/^.*keycode *\([0-9]\+\) (keysym .*, \(.*\)),.*$/keycode \1 = \2/p'
    ...
    keycode 36 = Return
    keycode 180 = XF86HomePage
    keycode 180 = XF86HomePage
    keycode 225 = XF86Search
    keycode 163 = XF86Mail
    keycode 163 = XF86Mail
    keycode 192 = XF86Launch5
    ...

Keys used for redirection:

    key <HNGL> keycode 130 = Hangul
    key <HJCV> keycode 131 = Hangul_Hanja
    key <LNFD> keycode 109 = Linefeed
    key <PROP> keycode 138 = SunProps
    key <FRNT> keycode 140 = SunFront
    key <I120> keycode 120 = NoSymbol
    key <I128> keycode 128 = XF86LaunchA
    key <I147> keycode 147 = XF86MenuKB
    key <I149> keycode 149 = NoSymbol
    key <I154> keycode 154 = NoSymbol
    key <I155> keycode 155 = XF86Xfer
    key <I159> keycode 159 = XF86DOS
    key <I160> keycode 160 = XF86ScreenSaver
    key <I161> keycode 161 = NoSymbol
    key <I162> keycode 162 = XF86RotateWindows
    key <I168> keycode 168 = NoSymbol
    key <I170> keycode 170 = XF86Eject, XF86Eject
    key <I174> keycode 174 = XF86AudioStop, XF86Eject
    key <I177> keycode 177 = XF86Phone
    key <I178> keycode 178 = NoSymbol
    key <I183> keycode 183 = NoSymbol
    key <I184> keycode 184 = NoSymbol
    key <I185> keycode 185 = XF86ScrollUp
    key <I186> keycode 186 = XF86ScrollDown
    key <I215> keycode 215 = XF86AudioPlay
    key <I217> keycode 217 = NoSymbol
    key <I219> keycode 219 = NoSymbol
    key <I220> keycode 220 = XF86WebCam
    key <I221> keycode 221 = NoSymbol
    key <I222> keycode 222 = NoSymbol
    key <I224> keycode 224 = XF86Messenger
    key <I226> keycode 226 = XF86Go
    key <I227> keycode 227 = XF86Finance
    key <I228> keycode 228 = XF86Game
    key <I229> keycode 229 = XF86Shop
    key <I230> keycode 230 = NoSymbol
    key <I231> keycode 231 = Cancel
    key <I234> keycode 234 = XF86AudioMedia
    key <I235> keycode 235 = XF86Display
    key <I245> keycode 245 = XF86Bluetooth
    key <I246> keycode 246 = XF86WLAN
    key <I249> keycode 249 = NoSymbol
    key <I250> keycode 250 = NoSymbol
    key <I251> keycode 251 = NoSymbol
    key <I252> keycode 252 = NoSymbol
    key <I253> keycode 253 = NoSymbol

E.g for key __\<I246\>__ keycode 246 = XF86WLAN:

Uncomment the line in __symbols/inet__ and comment out other key you don't need. For example key __\<HENK\>__.

```c++
...
// key <I235>   {      [ XF86Display           ]       };
// key <I245>   {      [ XF86Bluetooth         ]       };
key <I246>   {      [ XF86WLAN              ]       };
// key <I249>   {      [ ]       }; // KEY_VIDEO_NEXT  --  drive next video source
...
key <HKTG>   {      [ Hiragana_Katakana     ]       };
// key <HENK>   {      [ Henkan                ]       };
key <MUHE>   {      [ Muhenkan              ]       };
key <KATA>   {      [ Katakana              ]       };
...
```

Search keyname __\<I246\>__ in __symbols/us__ and replace it with __\<HENK\>__.

```c++
key <AB05> {
type[group1]="DVQ-SIMPLIFIED_ALPHA_NUMERIC",
symbols[Group1]= [ NoSymbol, b, X, NoSymbol, x ],
actions[Group1]= [ RedirectKey(key=<HENK>,clearmods=Lock) ]
};key <HENK> { [            b,           B ] };
```
