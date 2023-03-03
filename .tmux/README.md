# [Tmux](https://github.com/tmux/tmux/wiki) 

tmux is a terminal multiplexer. It lets you easily switch between multiple programs in one terminal, detach them (keeps running in the background), and reattach them to another terminal.

## Install

- Mac  :
```
brew install tmux
```

- linux  :
```
apt-get install tmux
```

- Get the current config : 
```
tmux show -g | cat > ~/default.conf
```

## Documentation

<details>
<summary> Chapter </summary>
- [x] Tmux & Screen
- First Step :
    - [x] Tmux
    - [x] Commande mode
- Help :
    - [x] List key & keyboard shortcut info
- Panes :
    - [x] Split the windows vertically/horizontally
    - [x] Close the current (focused) pane
    - [x] Switch to the right/left/top/bottom pane
    - [x] Show pane numbers
    - [x] Swap panes
    - [x] Move the current pane previous/next
    - [x] Send commands to all panes
    - [x] Zoom in/out
    - [x] Resize
    - [x] Convert split -> single window
    - [x] join single window -> split
- Layout :
    - [x] Even-Horizontal
    - [x] Even-Vertical
    - [x] Main-Horizontal
    - [x] Main-Vertical
    - [x] Tiled layout
    - [x] Switch to the next layout
- Windows :
    - [x] Create and switch to new windows
    - [x] Switch to specific existing windows
    - [x] Switch the preview/next/last previously used
    - [x] Close the current windows
    - [x] Rename the current windows
    - [x] Hours
    - [x] Swap-window
- Copy mode :
    - [x] Open
    - [x] Basic key vim
    - [x] Paste content of buffer_0
    - [x] Capture pane & show buffer
    - [x] Show buffer
    - [x] List buffe 
    - [x] Choose buffer
    - [x] Delete buffer
    - [x] Save buffer
    - [x] Load file into default buffer
    - [x] Load file into specific buffer name
- Sessions :
    - [x] Create & attach to a new tmux session
    - [x] Create & detached to a new tmux session
    - [x] Create a new session with the name and window
    - [x] Switch the preview/next/last
    - [x] Disconnect the current tmux session
    - [x] Show list of existing tmux sessions
    - [x] Back to last disconnect session
    - [x] Back to specific disconnect session
    - [x] Rename the current session
- Manage Sessions :
    - [x] Opening the session management panel
    - [x] Explication : list of sessions 
    - [x] Explication : Show all window into session
    - [x] Move into window & session
    - [x] Shortcut
- Command :
    - [x] Note command
- Configuration :
    - [x] Set to start up tmux in my shell
    - [x] File, position and reload the config
    - [x] ~/.tmux.conf
- Binding :
    - [ ] Reload config
    - [x] Change prefix
    - [ ] Split window (1° way)
    - [ ] Split window (2° way)
    - [ ] Pane Navigation
    - [ ] Pane Swap
    - [ ] Pane Resize
    - [ ] Switch pane with ALT-arrow
    - [ ] ...
- Plugins :
    - [ ] tmux-plugins
    - [ ] tmux-battery
    - [ ] tmux-yank
    - [ ] tmux-open
    - [ ] tmux-tasks
    - [ ] vim-tmux-navigator
- Customizing :
    - [ ] DraculaTheme
    - [ ] ...
</details>

<details>
<summary> Explication </summary>
- Set & setw :
    - The "set" command sets a global option for all tmux sessions, windows and panels,
    - In contrast, the "setw" command sets an option for the current window or panel,
- bind, bind -n, bind -r & bind-key :
    - bind : This command binds a key combination to a command in the tmux configuration file,
    - bind -n : The "bind -n" command is used to bind a non-standard keystroke to a command in tmux. Thus, the prefix is not mandatory to access this combination,
    - bind -r : This command allows you to have a link in "repeatable" mode if you hold down this key, the linked command will be repeated several times. Example: you can use the prefix once and the pane switch command several times (h, j, k, l),
    - bind-key : This command binds a key combination to a command using tmux's prefix key (by default, "Ctrl + b") and particularly useful for binding complex key combinations,
- set | setw -q : The "-q" option is used to not display an error message if the option does not exist.
</details>

## plugins

- [tmux-plugins](https://github.com/tmux-plugins/tpm)
Example install plugins : (~/.tmux.conf)
```
set -g @plugin 'github_username/plugin_name'
set -g @plugin 'github_username/plugin_name#branch'
set -g @plugin 'git@github.com:user/plugin'
set -g @plugin 'git@bitbucket.com:user/plugin'
```
- [Tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
- [Tmux-battery](https://github.com/tmux-plugins/tmux-battery)
- [Tmux-yank](https://github.com/tmux-plugins/tmux-yank)
- [Tmux-open](https://github.com/tmux-plugins/tmux-open)
- [Tmux-tasks](https://github.com/chriszarate/tmux-tasks)
    - require [taskwarrior](https://github.com/GothenburgBitFactory/taskwarrior)
- [Dracula Theme](https://draculatheme.com/tmux)
- [Vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

## Sources

- [How can i set my default shell to start up tmux](https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux)
- [Manage multiple terminal sessions](https://ostechnix.com/tmux-command-examples-to-manage-multiple-terminal-sessions/)
- [how to zoom panes for better text visibility](https://ostechnix.com/how-to-zoom-tmux-panes-for-better-text-visibility/)
- [Starter pack (fr)](https://doc.ubuntu-fr.org/tmux)
- [Tmux cheat sheet](https://gist.github.com/andreyvit/2921703)
- [Cheat sheet & Quick reference](https://tmuxcheatsheet.com)
[]()
- [Building a custom IDE with tmux](https://mamyn0va.github.io/2019/02/05/building-a-custom-ide-with-tmux)
- [Tmux key Combinations](https://keycombiner.com/collections/tmux/)
- [Clean tmux cheat-sheet](https://gist.github.com/Bekbolatov/6840069e51382965fdad)
- [Tmuxp : template tmux](https://tmuxp.git-pull.com/)
- [Man openbsd tmux](https://man.openbsd.org/tmux)
- [Tutoriels (fr)](https://www.hostinger.fr/tutoriels/comment-utiliser-tmux-plus-cheatsheet)
- [A guide customizing your tmux](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)
- [Commande reference](https://maxoid.io/tmux/)
- Arcolinux :
    - [Everthing you need to know about tmux introduction](https://arcolinux.com/everthing-you-need-to-know-about-tmux-introduction/)
    - [Everything you need to know about tmux status bar](https://arcolinux.com/everything-you-need-to-know-about-tmux-status-bar/)
    - [Everthing you need to know about tmux windows](https://arcolinux.com/everthing-you-need-to-know-about-tmux-windows/)
- [Tmux-select-layout](https://waylonwalker.com/tmux-select-layout/)
- Tmux.conf :
    - [Bekbolatov](https://gist.github.com/Bekbolatov/6840069e51382965fdad)
    - [Raygunsix](https://gist.github.com/raygunsix/3044075)

## Exemple Configuration

- [bashbunni](https://github.com/bashbunni/dotfiles)
- [gpakosz](https://github.com/gpakosz/.tmux)
