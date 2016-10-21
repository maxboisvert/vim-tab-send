# Vim Tab Send

This is a plugin inspired by neoterm and vim-dispatch.

## Installation

Add the plugin with plug (or your prefered way) :
```VimL
Plug 'maxboisvert/vim-simple-complete'
```

And add an alias
```bash
alias dir_name='basename `pwd` | xargs echo -n'
alias tab_receive='tmux new-session -A -s `dir_name`'
```

## Usage
Open another terminal tab in the same folder then your current vim session and start `tab_receive`. From vim, you can now call `TabSend your bash command`.

## Tmux configuration

Be sure to enable the mouse if you are like this.

~/.tmux.conf :
```
set -g mouse on
```

## License

Copyright (c) 2016 Maxime Boisvert.
This program is licensed under the [GPLv3 license][gpl].
[gpl]: http://www.gnu.org/copyleft/gpl.html
