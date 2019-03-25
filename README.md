Backup of my configuration files. Mostly for my personal use as and when I migrate to new computer.

---------
If you want to use my vim settings, you can clone the repo and get going. Before following the steps below, you might want to install zsh and oh-my-zsh that I use. You can do that [here](http://www.boekhoff.info/how-to-install-zsh-and-oh-my-zsh/).

Also be sure to change the aliases according to your path.

``` bash
cd
git clone --recurse-submodules https://github.com/thehalfspace/dotfiles
cd dotfiles
sh symlink.sh
```


## vim: 

List of plugins that I use:

[Pathogen](https://github.com/tpope/vim-pathogen): to manage and install plugins. When using pathogen you can install any plugin by cloning their git repository in the folder `~/.vim/bundle/`.

[vim-sensible](https://github.com/tpope/vim-sensible): Makes vim more tolerable. Keys like backspace work the way they should. 

[Lightline](https://github.com/itchyny/lightline.vim): adds a beautiful statusline in the editor.

[nerdtree](https://github.com/scrooloose/nerdtree): A cool file system explorer, so that you can browse directory structure from within vim.

[nerdcommenter](https://github.com/scrooloose/nerdcommenter): Enhanced commenting on your code.

[ale](https://github.com/w0rp/alr): Syntax error detection.

[vim-fugitive](https://github.com/tpope/vim-fugitive): An awesome git wrapper.

[vimtex](https://github.com/lervag/vimtex): A latex plugin for vim. I am still experimenting with this.

[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Select the same variables at multiple locations.


Here are some cool commands that I use with these settings. I have been using these for about a month now, so I still have a lot to explore.
``` bash
# The <leader> in my setting is , (a comma). A lot of mappings start with <leader> and comma should be used for any reference to <leader>.
,nn         # Toggle the nerd tree explorer.

Ctrl-hjkl    # Move around nerd tree/any vim buffer.

Ctrl-n      # Select something in visual mode, and use this to find its next match. 
            # repeat the command for multiple matches. Super useful when I want to edit the same word on multiple lines.

,cc         # Comment the selection
,ci         # Invert comment the selection. (Uncomment if commented and vice versa)

Ctrl-{or}   # Move up and down in paragraphs

Shift-G     # Move cursor to end of document
gg          # Move cursor to beginning of document
u           # Undo
Ctrl-r      # redo
o           # insert on the next line
:linenumber # go to that linenumber
~           # Switch case of the selection

# If the cursor is in the middle of a line, press dd to delete the entire line. Press C to delete from the cursor position to end of line. Press ce to delete word.

r           # replace one character. e.g. if I press r5, it will replace the existing character with 5.

\ll         # Compile latex document (vimtex)
\lv         # View latex document (need a pdfviewer for this. I use skim)

:tabedit <filename> # open a file in new tab
gt          # switch tabs
```

REFERENCES:
[amix/vimrc](https://github.com/amix/vimrc),
[tpope](https://github.com/tpope),
[vim-wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki).
