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
" highlight CursorLine ctermbg=LightBlue
set cursorcolumn
set ruler
set ignorecase
set smartcase
set hlsearch
set wildmenu

" Change semi colon to colon in normal mode
nnoremap ; :

" More natural split opening
set splitbelow
set splitright

" Code folding with indent
" set foldmethod=indent   
" set foldnestmax=10
" set nofoldenable
" set foldlevel=2

" Faster navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
