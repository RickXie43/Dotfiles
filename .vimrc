"Basic Setting for Vim
set nu
set nocompatible
set hidden
set relativenumber number
set showmode
set showcmd
filetype indent on
filetype plugin on
set autoindent
set cursorline
hi cursorline cterm=NONE ctermbg=DarkGrey
set cursorcolumn
hi cursorcolumn cterm=NONE ctermbg=DarkGrey
set ruler
set hlsearch
syntax on
set clipboard=unnamedplus
filetype plugin indent on

"Basic Sniffet for Vim
"esc mapping
inoremap jk <esc>
inoremap kj <esc>
cnoremap jk <esc>
cnoremap kj <esc>
onoremap jk <esc>
onoremap kj <esc>
"direction mapping
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"copy to buffer                                                                           vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>

"-------------------------------------------------------------------------
"Plug-ins for Vim-Plug
call plug#begin()
Plug 'iamcco/markdown-preview.vim'	"preview for markdown
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'		"filetree in vim
Plug 'rsmenon/vim-mathematica'
Plug 'google/yapf'			"autoformat for python
Plug 'maralla/completor.vim'		"auto code completor
Plug 'yggdroot/indentline'		"indentline for python
Plug 'sirver/ultisnips'			"Snippets for vim
Plug 'xuhdev/vim-latex-live-preview'	"preview plugin for latex
Plug 'vim-autoformat/vim-autoformat'    "Auto format plugin for all filetype
call plug#end()

"Autoformat settings
"Use autoformat command with F3
noremap <F3> :Autoformat<CR>

"Indentline Style for indentline(plug)
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"NERDTree Mapping for nerdtree(plug)
map <silent> <C-e> :NERDTreeToggle<CR>

"Setup for yapf(plug)
autocmd FileType python nnoremap :form<CR> :0,$!yapf<CR>

"Setup for vimtex(plug)
let g:vimtex_view_method = 'zathura'
let g:vimtex_syntax_conceal_disable = 1
let maplocallearder = ","

"Setup for ultisnips
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Setup for vim-latex-live-preview
let g:livepreview_previewer='okular'
let g:livepreview_engine='xelatex'
set updatetime=1000
"-------------------------------------------------------------------------
"Snippets for Markdown
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>
