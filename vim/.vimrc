set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" Make my vim looks IDE
" airline
Plugin 'bling/vim-airline'
" Show structure of program(need ctags)
Plugin 'majutsushi/tagbar'
" Pending tasks list
Bundle 'fisadev/FixedTaskList.vim'
" nerdtree
Plugin 'https://github.com/scrooloose/nerdtree.git'
" Code and files fuzzy finder
Plugin 'kien/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plugin 'fisadev/vim-ctrlp-cmdpalette'
" Power tool for search text file
Plugin 'dyng/ctrlsf.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Great tmux-vim integration
Plugin 'christoomey/vim-tmux-navigator'
" Window chooser
Plugin 't9md/vim-choosewin'
" Faster vim motion
Plugin 'Lokaltog/vim-easymotion'
" Multiple selection
Plugin 'terryma/vim-multiple-cursors'

" Put counterpart
Plugin 'Townk/vim-autoclose'
" Show search index
Plugin 'henrik/vim-indexed-search'


" Snippet
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Python related
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'

"Markdown related
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'scrooloose/syntastic'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required
" If no screen, use color term

if ($TERM == "vt100")
  " xterm-color / screen
  set t_Co=8
  set t_AF=[1;3%p1%dm
  set t_AB=[4%p1%dm
endif

if filereadable($VIMRUNTIME . "/vimrc_example.vim")
 so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
 so $VIMRUNTIME/macros/matchit.vim
endif

syntax on

set nocompatible
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
set backup		" keep a backup file
" set textwidth=78
" set shiftwidth=4
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch
set nu

"set background=dark	" another is 'light'

" VIM 6.0,
if version >= 600
    set nohlsearch
    set foldmethod=marker
    set foldlevel=1
    set fileencodings=ucs-bom,utf-8,sjis,big5,latin1
else
    set fileencoding=taiwan
endif

" Tab key binding
if version >= 700
  map  <C-c> :tabnew<CR>
  imap <C-c> <ESC>:tabnew<CR>
  map  <C-k> :tabclose<CR>
  map  <C-p> :tabprev<CR>
  imap <C-p> <ESC>:tabprev<CR>
  map  <C-n> :tabnext<CR>
  "imap <C-n> <ESC>:tabnext<CR>
  map <F4> :set invcursorline<CR>

  map g1 :tabn 1<CR>
  map g2 :tabn 2<CR>
  map g3 :tabn 3<CR>
  map g4 :tabn 4<CR>
  map g5 :tabn 5<CR>
  map g6 :tabn 6<CR>
  map g7 :tabn 7<CR>
  map g8 :tabn 8<CR>
  map g9 :tabn 9<CR>
  map g0 :tabn 10<CR>
  map gc :tabnew<CR>
  map gn :tabn<CR>
  map gp :tabp<CR>

  highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
  highlight TabLine    term=bold cterm=bold
  highlight clear TabLineFill


end

" Crontabs must be edited in place
au BufRead /tmp/crontab* :set backupcopy=yes

" personal setting
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set incsearch
set hlsearch
set number
" defined by jkw
imap jj <Esc>
let mapleader = "z"
" for air line
set laststatus=2

" Plugin shortcut
" Setting for ycm
"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
"let g:ycm_collect_identifiers_from_tag_files = 1
"let g:ycm_autoclose_preview_window_after_completion=1
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
"map <C-j> :YcmCompleter GoToDefinition<CR>
"map <C-k> :YcmCompleter GoToDeclaration<CR>

" TaskList
map <F2> :TaskList<CR>
" NerdTree!
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
" Setting for tagbar
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" jedi completion
let g:jedi#completions_command = "<leader><leader>"

"CtrlSF
nmap <C-E>e <Plug>CtrlSFPrompt

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Colorschema
let g:hybrid_use_Xresources = 1
colorscheme hybrid

" Markdown
let g:vim_markdown_math=1


"Tmux integration
autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")                        

" invoke with '-'
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1

" Snippet setting
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" airline 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_theme = 'powerlineish'
let g:airline#extensions#whitespace#enabled = 0

