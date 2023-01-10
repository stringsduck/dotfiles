# .dotfiles

config system to help you live your best command line life.

---

## why?

customising your command line and adding shortcuts can improve your quality of dev life a lot.

over time you'll probably tweak and change these a fair bit.

sharing these settings or recreating them on a new device can be a pain.

this repo can help you maintain and manage them with git, so you don't lose them and can share them between devices.


## how?

config files live in this repo instead of on your device. you then just symlink them (using stow) to your home directory.


## setup

```bash
# clone .dotfiles to your home directory
cd ~
git clone https://github.com/stringsduck/dotfiles.git .dotfiles

# install homebrew if you don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install and use zsh if you aren't already
brew install zsh
chsh -s /opt/homebrew/bin/zsh
zsh --version # should be > 5.4

# install stow so you can symlink easily
brew install stow

# install vcprompt so you can show git branch info in your cli prompt
brew install vcprompt
```


## using .dotfiles

by using stow we can symlink the config files from the `.dotfiles/` repo with the home directory. then any future config changes can be made in the repo and commited. any other devices using these configs just need to pull the latest code.

```bash
# go to .dotfiles dir
cd ~/.dotfiles

# use stow to symlink the .dotfiles/git/.gitconfig file to your home directory
stow git

# do the above with any other configs you want use
```


## forking .dotfiles

everyone wants their own settings so i'd suggest forking this repo and maintaining your own .dotfiles instead of using my broken ones