# Corné's Dotfiles

I've copied a lot from [mathias's](https://github.com/mathiasbynens/dotfiles/) and [paul's](https://github.com/paulirish/dotfiles) dotfiles.

## Installation
Git clone this in a folder where you can keep the files, for example `~/dotfiles`, enter that directory and run `setup.sh`. It will than symlink the dotfiles and z from [rupa](https://github.com/rupa/z).

For some aliases/functions you need to have some stuff installed.

* for `server` you need to have screen installed and NodeJS http-server `npm install http-server -g`
* for `c` you need Pygments; `pip install pygments`

Also make sure you change the default username in .exports

The most easy way to install is: `git clone https://github.com/cornedor/dotfiles.git && cd dotfiles && ./setup.sh`

## .extra
The .extra file has some private configs which are not part of this repo.

## overview of files

#### shell environment
* `.aliases`
    * `..` goes 1 directory up
    * `cd..` goes 1 directory up
    * `...` goes 2 directory up
    * `....` goes 3 directory up
    * `.....` goes 4 directory up
    * `-` goes one directory back in history
    * `l` is an alias for `ls -a` (all ls's add --color)
    * `ll` is an alias for 'ls -al'
    * `lsd` shows all folders
    * `cls` is an alias for `clear`
    * `q` is an alias for `exit`
    * `_` is an alias for `sudo`
    * `_i` is an alias for `sudo aptitude isntall`
    * `_u` is an alias for `sudo aptitude update`
    * `_s` is an alias for `aptitude search`
    * `ni` is an alias for `npm install`
    * `n` is an alias for `node`
    * `server` is an alias for http-server running in a screen
    * `c` a colorfull cat
    * `undopush` is an alias for undoing a git push
    * `ip` will give your current public ip
    * `ips` will show a list with local ips
* `.bash_profile` - includes all files and adds SSH hostname completion
* `.bash_prompt`
* `.bashrc`
* `.exports` - make sure you take a look in this file, you might need to change the default username
* `.functions`
    * `h` will search trough your history
    * `f` is a shorthand for find
    * `md` will make a directory and enter it
    * `cp_p` is a copy with progres
    * `extract` will extract your files
* `.extra` - not included, explained above
