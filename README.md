**!** These dotfiles have been retired because I got a new laptop. this repo will be archived / deleted soon.

## Dotfiles

![](media/dotfiles/screenshot1.png)
**Theme:** Ashes (Dark)<br>
**Terminal:** Kitty<br>
**Editor:** Neovim w/ Lazy.nvim (_180ms startup time_)<br>
**Cursor Theme:** Capitaine Cursors<br>
**Font:** Fira Code Nerd Font<br>
**Shell:** Bash<br>
**WM:** i3<br>

---
### Features:

|FZF Dmenu|Music Player|
|---------|------------|
|<img src='media/dotfiles/dmenu.gif' height='400'>|<img src='media/dotfiles/music.gif' height='400'>|

Window animations:

https://github.com/user-attachments/assets/5b377a4c-63ed-46ce-9674-a81ad99060f7

#### Useful I3 Keybinds:
|Key|Action|
|:--|:-----|
|`mod d`|Dmenu|
|`mod n`|Open neovim in a new terminal|
|`mod enter`|Open a terminal|
|`mod m`|Open music player|
|`mod b`|Connect to bluetooth device|
|`mod q`|Kill current window|
|`mod shift up`|Brightness up|
|`mod shift down`|Brightness down|
|`mod p`|Take a screenshot and save to ~/media/screenshots|
|`mod shift -`|Move window to scratchpad|
|`mod -`|Show scratchpad windows|

#### Useful Neovim Keybinds:
|key|Action|
|:--|:-----|
|`<C-,>`|Open a floating terminal|
|`<S-u>`|Toggle file explorer|
|`<Tab>`|Next buffer/tab|
|`<S-Tab>`|Previous buffer/tab|
|`<C-Up>`|Add cursor above|
|`<C-Down>`|Add cursor below|
|`:CarbonNowSh`|Open the selected code in [carbon.now.sh](https://carbon.now.sh)|


### [!] Important Stuff:

---

**[!]** I use the [pijulius/picom](https://github.com/pijulius/picom) fork of picom for animation support. Using another fork will likely break the [picom configuration](.config/picom.conf). please note that picom is not listed in the dependencies for this reason.

**[!]** You might have to define the mac address of your bluetooth device in `bin/bluetooth`, or disable the keybind and script altogether if you don't want to use it.

**[!]** These dotfiles are configured using a 1366x768 screen resolution, other resolutions haven't been tested. Use at your own discretion. 

---

### Installation:

#### Dependencies:
```
yay -S xorg xorg-server xorg-init ly brightnessctl i3 feh autotiling kitty zsh yadm neovim luarocks fzf mpv ttf-firacode-nerd capitaine-cursors bluez tclock cmatrix colorpicker peek neofetch pokeget cbonsai cmus cava cowsay pipes.sh fortune lolcat
```

I probably forgot a few things.

after installing the dependencies, just run the following:
```
yadm clone https://github.com/lu-sife/dotfiles.git
```

if you have existing dotfiles, you can overwrite them with:
```
yadm fetch --all &&
yadm reset --hard origin/master
```

---

### Random Cool Stuff:

|Name/Package||
|:-|:-|
|`pokeget`|display pokemon in your terminal!|
|`cbonsai`|grow a tree :D|
|`cmatrix`|become a hacker|
|`tclock`|useful for when `date` doesn't cut it|
|`bin/fetch`|neofetch wrapper c:|
|`bin/rain`|rain, so calming...|
|`peek`|useful for showing off your setup in a gif :D|
|`colorpicker`|idk why i have this, I've used it once|
|`cowsay`|c: cows :D|
|`ponysay`|cowsay but with ponies and better c:|
|`lolcat`|make everything rainbow|
|`fortune`|get inspirational quotes|
|`pipes.sh`|terminal screensaver for fun|

---

### To-Do: (so I don't forget)

- I'll probably swap to `cmus` instead of my mpv wrapper, although my wrapper is really nice for a little player that doesn't need much attention. I'm still learning it though :3
- swap to a vylet wallpaper at some point. I have a few in mind, maybe the art for 'creature city' :D
- maybe brush up my nvim config for faster load times.

