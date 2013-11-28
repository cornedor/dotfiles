" Run pathogen
execute pathogen#infect()

" Enable syntax highlighting and solarized
syntax enable
set background=dark
colorscheme solarized

" 4-spaces instead of tabs by default
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set mouse=a " enable mouse in vim in all modes
set nowrap " no wrap
set nu " line numbers
set ruler " show cursor position
set showmode " show the current mode

set wildmenu
set wildchar=<TAB>
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.psd,*.o,*obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set wildmode=list:longest

set ofu=syntaxcomplete#Complete

" toggle NERDTree using F3
map <F3> :NERDTreeToggle<CR>

" auto compile less

autocmd FileWritePost,BufWritePost *.less :call LessCSSCompress()
function! LessCSSCompress()
    let cwd = expand('<afile>:p:h')
    let name = expand('<afile>:t:r')
    if (executable('lessc'))
        cal system('lessc ' . cwd . '/' . name . '.less > ' . cwd . '/' . name . '.css')
    endif
endfunction

" enable powerline
set laststatus=2
