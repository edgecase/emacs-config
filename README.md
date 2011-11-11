# EdgeCase Emacs Config

You should give it a try.

## Pre-requisites

This config is built primarily to work on top of the OS X version of
[Emacs](http://emacsforosx.com/). Be sure to download version 24 or
greater.

## Install

1. `git clone git://github.com/edgecase/emacs-config.git`
2. `cd emacs-config`
3. `rake`
4. Open emacs with your app launcher of choice. You should see emacs
downloading and compiling the defined packages.

We have leveraged Phil Hagelberg's
[emacs-starter-kit](https://github.com/technomancy/emacs-starter-kit)
which uses [Marmalade](http://marmalade-repo.org/) for downloading
common emacs packages.

## Customizing

Emacs works especially well when wanting user-specific configurations.

Simply place customization files to the folder
`~/.emacs.d/<username>`. Where `<username>` is the `whoami` or `logname` of the currently logged in user.

* Any file with a `.el` extension in that folder will be loaded when running `emacs`.

We suggest creating your own repository of `.el` files and symlinking them to the folder `~/.emacs.d/<username>`.

## Bindings

### General

`C-x C-+` => increase font size

`C-x C-+` => decrease font size

`C-x +` => balance windows

### Dired Mode

Think of it as "directory edit" mode.

`C-x d` => dired mode

* `C-x C-q` => edit filename inline
* `C-c C-c` => commit changes

### Clojure

`C-c C-j` => clojure-jack-in

`C-c f` => find-file-in-project

### Version Control

`C-x v =` => diff

`C-x v u` => undo local changes

`C-x v l` => view commit log

`C-x v i` => include in repository (`git add <file>`)

`C-c g` => MAGIT status

* `<tab>` => view diff
* `s` => stage changes
* `u` => unstage changes
* `c` => commit buffer
* `C-c C-c` => commit changes
* `C-c C-a` => amend changes
* `P` => push
* `F` => pull
* `b` => change branch
* `B` => new branch
* `g` => refresh status buffer
