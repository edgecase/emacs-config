# EdgeCase Emacs Config

You should give it a try.

## Pre-requisites

This config is built primarily to work on top of the OS X version of [Emacs](http://emacsforosx.com/). Be sure to download version 24 or greater.

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

### Clojure

For a clojure development environment, follow the steps below.

1. Install [Leiningen](https://github.com/technomancy/leiningen)

2. If you're planning to use `clojure-jack-in` for opening
[SLIME](http://common-lisp.net/project/slime/) in a clojure project,
you must run `$ lein plugin install
swank-clojure <VERSION>` where `<VERSION>` is the version of
[swank-clojure](https://github.com/technomancy/swank-clojure) you wish
to install. **OR**
3. add `swank-clojure` to your `project.clj` `:dev-dependencies` and
run `lein deps`. This will allow you to open a SLIME session inside
the `leiningen` project.

## Customizing

Emacs works especially well when wanting user-specific configurations.

Simply place customization files to the folder `~/.emacs.d/<username>`. Where `<username>` is the `whoami` or `logname` of the currently logged in user.

* Any file with a `.el` extension in that folder will be loaded when running emacs.

We suggest creating your own repository of `.el` files and symlinking
them to the folder `~/.emacs.d/<username>`.

## Bindings

### General

[General Resources](http://www.gnu.org/software/emacs/manual/html_node/emacs/index.html)

`C-x C-+` => increase font size

`C-x C-+` => decrease font size

`C-x +` => balance windows

`M-g g` , `M-g M-g` => goto line number

### Dired Mode

Think of it as "directory edit" mode.

[Dired Mode Resources](http://www.gnu.org/software/emacs/manual/html_node/emacs/Dired.html)

`C-x d` => dired mode

* `C-x C-q` => edit filename inline
* `C-c C-c` => commit changes
* `d` => schedule file for deletion
* `u` => unschedule action for this line
* `x` => execute scheduled changes

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
