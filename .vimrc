" Symlink the .vimrc with the home directory
" ln -s ~/dotfiles/.vimrc ~/.vimrc

"Pathogen runtime path manipulation
execute pathogen#infect()
syntax on
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set nu
set cursorline
set cursorcolumn
set ruler
set hidden
set ignorecase
set smartcase
set hlsearch
set wildmenu

" Change semi colon to colon in normal mode
nnoremap ; :

" Map auto complete of (, ", ', [
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i

" Mapping for use of single brackets 
" (use forward-slash or question mark before brackets)
inoremap /[ [ 
inoremap ?( ( 
inoremap ?{ {
inoremap /' '
inoremap ?" "

" Colorscheme
set background=dark
colorscheme peaksea

" Lightline colorscheme
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \}
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }


" Set Font
set gfn=\Downloads\plex-1.1.5\IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15

" Quick exit from insert mode
inoremap jk <ESC>

" Set Leader mostly for NERDTree mappings
let mapleader=","
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=25

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

let g:ale_linters = {
						\'javascript': ['jshint'],
						\'python': ['flake8'],
						\'go': ['go', 'golint', 'errcheck']
						\}

" Vimtex
let g:vimtex_view_method='skim'
let g:vimtex_compiler_latexmk={'callback': 0}
let g:matchup_matchparen_deferred=1


" NerdCommenter

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multiline comments
let g:NERDCompactSexyComs = 1
