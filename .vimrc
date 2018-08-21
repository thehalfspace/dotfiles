set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

:set number
:nnoremap ; :

let g:vimtex_view_method='skim'
let g:vimtex_compiler_latexmk={'callback' : 0}

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
