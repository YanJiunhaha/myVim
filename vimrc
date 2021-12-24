set fileencodings=utf8,big5
" key mapping
"inoremap {<Cr> {<Cr>}<Esc>ko<Tab>
"inoremap jf <esc>

" alias function
function! SetupCommandAlias(from, to)
    exec 'cnoreabbrev <expr> '.a:from
    \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
    \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction
call SetupCommandAlias("W","w")

" auto script
autocmd WinEnter * setlocal cursorcolumn
autocmd WinLeave * setlocal nocursorcolumn

autocmd WinEnter * setlocal relativenumber
autocmd WinLeave * setlocal norelativenumber

"autocmd BufWritePre * :%s/\s\+$//e

" status
set showcmd

" layout
set scrolloff=3

set wrap
set linebreak

" search
set hlsearch
set ignorecase
set smartcase

" line %
set number
set relativenumber

" tab
set tabstop=4
set shiftwidth=4
set expandtab
%retab!
set autoindent

"set foldmethod=indent

" mouse mod
set mouse=a

"set paste
set clipboard=unnamed

" theme color
set list " show all white spaces as character
syntax on
"try
colorscheme murphy
"catch
"endtry

" line high light
set cursorcolumn
set cursorline

" color customer
set t_Co=256
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
hi CursorLine cterm=bold ctermfg=NONE ctermbg=DarkGrey
hi CursorColumn cterm=bold ctermfg=NONE ctermbg=DarkGrey


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" C O N F I N G """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Reference: https://github.com/junegunn/vim-plug
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Shorthand notation: 
"   Plug 'username/toolname'
"   => fetch url: https://github.com/username/toolname

"" powerful status bar
Plug 'vim-airline/vim-airline'

"" Code alignment tool
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"" Auto complete code
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
let g:snipMate = { 'snippet_version' : 1 }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"" Filemanager
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' } " On-demand loading
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' } " On-demand loading

"" useful colorscheme selector
Plug 'https://github.com/c9s/colorselector.vim.git'

"" make vim more sensible
Plug 'https://github.com/tpope/vim-sensible.git'

"" show indent line
Plug 'Yggdroot/indentLine'
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

"" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"" auto commentary
Plug 'https://github.com/tpope/vim-commentary.git'

"" easy to delete/add/change surroundings
Plug 'https://github.com/tpope/vim-surround.git'

Plug 'zivyangll/git-blame.vim'
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" Initialize plugin system
call plug#end()
