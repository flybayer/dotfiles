# My personal dotfiles

*Managed with [rcm][]*

## New machine setup

1. Install XCode from the App Store
1. [Generate SSH keys and add them to GitHub](https://help.github.com/articles/generating-ssh-keys/)
1. Clone this repo

        git clone git@github.com:feedthebayer/dotfiles.git ~/.dotfiles

1. Create `.laptop.local` link

        ln -s ~/.dotfiles/host-osx/laptop.local ~/.laptop.local

1. Download & run [thoughtbot's laptop script][] to install and configure all your apps
1. Set up dotfiles *(using [rcm][])*
   1. Link the rcm config only

            rcup -v rcrc

   1. Do a dry run to see which files will be symlinked

            lsrc -B osx

   1. Link the dotfiles

            rcup -vB osx

1. Compile YouCompleteMe for use with NeoVim

        cd ~/.vim/bundle/YouCompleteMe
        ./install.sh


## Set up key remapping

1. In OSX System Preferences, change Caps Lock to Control
1. Karabiner should be configured with mackup below

## Restore application settings

If you've already installed the dotfiles with the `rcup` command listed above,
you'll have `~/.mackup.cfg` installed. Modify this configuration file to include
the applications for which you wish to install preference files [see
[supported applications][] or run `mackup list`]. Install all OS X applications
on your list, including your storage engine app (Dropbox by default). There
are more options for the mackup configuration file you might want to tinker
with. Here are [the mackup config docs][].

Once you're satisfied your applications are installed, sync their preferences
with mackup:

```
mackup restore
```

## Adding new files to the project

```
mkrc ~/.filename
```

**Examples:**

```
mkrc ~/.vimrc
mkrc ~/.atom/config.cson  # Nested files also work
mkrc ~/.vim  # And entire directories work too
```

The specified file will be moved to the `~/.dotfiles` directory with the
dot prefix removed. The original file will be deleted,
then symlinked from `~/.dotfiles` back to its original location.
It will now stay in sync and be easily managed with source control.


[rcm]: https://github.com/thoughtbot/rcm
[thoughtbot's laptop script]: https://github.com/thoughtbot/laptop#install
[mackup]: https://github.com/lra/mackup
[supported applications]: https://github.com/lra/mackup#supported-applications
[the mackup config docs]: https://github.com/lra/mackup/blob/master/doc/README.md

