filetype plugin indent on

syntax on

augroup dynamic_smartcase
  autocmd!
  autocmd CmdLineEnter : set nosmartcase
  autocmd CmdLineLeave : set smartcase
augroup END

if has('gui_running')
  set ts=2 sw=2 et
  set guioptions=egmrt
  set guifont=Fira\ Code:h12
endif

if exists("g:neovide")
  set guifont=Fira\ Code:h11
  let g:neovide_cursor_animation_length=0
endif

" Always show the signcolumn, so our buffers doesn't shift on errors
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
autocmd FileType NvimTree setlocal signcolumn=no

set termguicolors
set ruler " Ruler on
set nu " Line numbers on
set nowrap " Line wrapping off
set laststatus=2 " Always show the statusline
set cmdheight=2 " Make the command area two lines high
set encoding=utf-8
set background=dark
set updatetime=100
set autoread " Automatically reload changes if detected
set wildmenu " Turn on WiLd menu
set hidden " Change buffer - without saving
set history=768 " Number of things to remember in history.
set cf " Enable error files & error jumping.
set autowrite " Writes on make/shell commands
set timeoutlen=350 " Time to wait for a command (after leader for example)
set foldlevelstart=99 " Remove folds
set formatoptions=crql
set iskeyword+=$,@ " Add extra characters that are valid parts of variables
set completeopt-=preview "Disables preview
set tabstop=2
set backspace=2  " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
set nobackup
set nowritebackup
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
set list " Show invisible characters
set shortmess+=c  " Don't give |ins-completion-menu| messages
set splitbelow
set splitright

set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/vendor/ruby/*,*/.bundle/*,*/.sass-cache/*,*/.bin/*
set wildignore+=*/doc/*,*/.yardoc/*
set wildignore+=*/.idea/*
set wildignore+=*/node_modules/*
set wildignore+=*/target/*
set wildignore+=*/.stack-work/*
set wildignore+=*/sorbet/rbi/*

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw
" Reset the listchars
set listchars=""
" a tab should display as "  ", trailing whitespace as "."
set listchars=tab:\ \  " Indentended trailing whitespace
" show trailing spaces as dots
set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" Sounds
set noerrorbells
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

" Mouse
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U
set backspace=indent,eol,start

" Adds some line space for easy reading
set linespace=4

" Custom tabs spacing
autocmd FileType dart setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType make setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType python setlocal tabstop=8 shiftwidth=4 softtabstop=4 foldmethod=syntax
autocmd FileType rust setlocal expandtab tabstop=4 shiftwidth=4

command Bash 20split term://bash
command VBash vsplit term://bash
