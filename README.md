
# Dotfiles

Jack Morgan's Dotfiles

## Table of Contents

- [Config](#config)
- [Description](#Description)
- [Programs](#Programs)
- [Dotfiles Maintenance](#How-these-dotfiles-are-maintained)
- [Contributing](#Contributing)

## Config

![Image 1](images/1.png)

![Image 2](images/2.png)

![Image 3](images/3.png)

## Description

* Focus on **shortcuts**
* High **usability** and **performance**
* **Optimized** for a 60% keyboard on a **laptop**
* **Low resources** used
* **Fonts**: [JetBrains](https://www.jetbrains.com/lp/mono/) and [Fontawesome](https://fontawesome.com/).
* **Colors and palette**: [Nord Theme](https://www.nordtheme.com/docs/colors-and-palettes)
* Designed for [Artix Linux](https://artixlinux.org/)

## Programs

- **WM**                            : [bspwm](https://github.com/baskerville/bspwm)
- **Init System**                   :[runit](http://smarden.org/socklog/)
- **DM**                           : [Lightdm](https://wiki.archlinux.org/title/LightDM)
- **Shell**                         : [bash](https://wiki.archlinux.org/index.php/zsh)
- **Terminal**                      : [Alacritty](https://github.com/alacritty/alacritty)
- **Bar**                           : [Polybar](https://github.com/polybar/polybar)
- **Compositor**                    : [Picom Jonaburg](https://aur.archlinux.org/packages/picom-jonaburg-git/)
- **Text Editor**                   : [IceVim](https://github.com/jackm245/IceVim)
- **Wallpaper Manager**             : [feh](https://feh.finalrewind.org/)
- **Notify Daemon**                 : [dunst](https://wiki.archlinux.org/index.php/Dunst)
- **File Manager**                  : [lf](https://github.com/gokcehan/lf) & [nautilus](https://wiki.archlinux.org/title/GNOME/Files)
- **Application Launcher**          : [rofi](https://github.com/davatorium/rofi)
- **Video Player**                  : [VLC](https://www.videolan.org/)
- **GTK Theme**                            : [Nordic](https://github.com/EliverLara/Nordic)
- **Icons**                            : [Dracula](https://draculatheme.com/gtk)
- **Terminal Clock**                            : [tty-clock](https://github.com/xorg62/tty-clock)
- **System Monitor**                            : [gotop](https://github.com/cjbassi/gotop)
- **Browser**                            : [brave](https://brave.com/)

## How these dotfiles are maintained

To maintain these dotfiles I created a bare git repository following [Atlassian's Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

1. Create a .config file - which is a bare Git repository - that will track the dotfiles.
```bash
git init --bare $HOME/.cfg
```
2. Create a config alias that is used to specifically interact with the dotfiles repository.
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
3. Set a flag to hide the files we are not explicitly tracking
```bash
config config --local status.showUntrackedFiles no
```
4. Add the alias definition to your .bashrc or use this line provided for convenience.
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```
These dotfiles can then my updated using git, but by using the config command
```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
