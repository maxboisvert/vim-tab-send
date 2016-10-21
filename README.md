# Vim Tab Send

Use this plugin to send bash command to another terminal tab.

This is a plugin inspired by neoterm and vim-dispatch.

## Installation

Add the plugin with plug (or your prefered way) :
```VimL
Plug 'maxboisvert/vim-simple-complete'
```

And needed scripts to your path :
```bash
export PATH=$PATH:~/path/to/vim-tab-send/bin
```

## Usage
Open another terminal tab in the same folder then your current vim session and start `tab_receive`. From vim, you can now call `:TabSend your bash command with file %`.

## Tmux configuration

Be sure to enable the mouse if you are like this.

~/.tmux.conf :
```
set -g mouse on
```

## Examples

This is in my vimrc configuration :
```VimL
command RspecFile execute 'TabSend bundle exec rspec --fail-fast --format progress %'
command RspecLine execute 'TabSend bundle exec rspec --fail-fast --format progress %:' . line('.')
command RspecAll execute 'TabSend bundle exec rspec --fail-fast --format progress'
```

## License

Copyright (c) 2016 Maxime Boisvert.
This program is licensed under the [GPLv3 license][gpl].
[gpl]: http://www.gnu.org/copyleft/gpl.html
