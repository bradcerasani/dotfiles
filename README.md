## Dotfiles

These are my dotfiles for [Fish Shell](http://fishshell.com/) and [Sublime Text 3](http://www.sublimetext.com/3). I'm currently using the [Spacegray Theme](https://github.com/kkga/spacegray) for Sublime Text 3.

## Installation

`cd` into wherever you'd like to store this repo. I keep it in my home directory `~/`

###Clone the repo and hop in:

```bash
git clone https://github.com/bcerasani/dotfiles.git && cd dotfiles
```

### Set up symlinks:
Drag or `mv` target files onto your desktop before creating symlinks in case something breaks.

To force create symlinks use `ln -sfn`

Note: Your file paths may differ
###### Fish Shell
```bash
ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
```
```bash
ln -s ~/dotfiles/fish/functions ~/.config/fish/functions
```

###### Sublime Text 3
```bash
ln -s ~/dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
```

### Alternatively..
Crawl the code and copy out the cool bits. Most of the good stuff is in fish/config.fish

## To-Do
- Create helper script to streamline install.

## Feedback
Send me an [email](bradcerasani@gmail.com), or hit me up on Twitter: [@shedbot](http://twitter.com/shedbot)

