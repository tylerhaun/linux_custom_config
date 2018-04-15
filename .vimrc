set nu
set tabstop=4
set expandtab
set shiftwidth=4

" set highlight search
set hlsearch

" set python compiler to 'make' command
set makeprg=python\ %

" press // after selecting a word with visual mode to search for that slected word
vnoremap // y/<C-R>"<CR>

" sets %% to the current opened file directory
cabbr <expr> %% expand('%:p:h')

" sets suffix to .js for gf
set suffixesadd+=.js

" makes j and k move up and down by cursor
noremap <Down> gj
noremap <Up> gk
" makes left and right cursor wrap
set whichwrap+=<,>,h,l,[,]

" stops cursor move when highlighting with *
nnoremap * *N

" underline all occurences of word under cursor
function EscapeString(str)
    return substitute(a:str, '[^a-zA-z0-9-<>]', '', "g")
"    return a:str
endfunction
function UnderlineCurrentWord()
    exec('match Underlined "' . EscapeString(expand("<cword>")) . '"')
endfunction
" noremap <Space> :call UnderlineCurrentWord()<CR>
nnoremap <Up> gk:call UnderlineCurrentWord()<CR>:<CR>
nnoremap <Down> gj:call UnderlineCurrentWord()<CR>:<CR>
nnoremap <Left> <Left>:call UnderlineCurrentWord()<CR>:<CR>
nnoremap <Right> <Right>:call UnderlineCurrentWord()<CR>:<CR>
inoremap <Up> <Up><C-O>:call UnderlineCurrentWord()<CR>
inoremap <Down> <Down><C-O>:call UnderlineCurrentWord()<CR>
inoremap <Left> <Left><C-O>:call UnderlineCurrentWord()<CR>
inoremap <Right> <Right><C-O>:call UnderlineCurrentWord()<CR>

nnoremap ct :tabclose<CR>
nnoremap ( gT
nnoremap ) gt

" Explorer tree style
let g:netrw_liststyle=3

" Explorer opens filein new tab
" let g:netrw_browse_split=3

" opens the file tree to project_base directory 
"let project_base = expand('%:p:h')
"command Filetree Ve expand('%:p:h') | vertical resize 30 | exec "normal \<C-w>\<C-w>"

" opens file tree when vim opens and when new tab gets created
"autocmd VimEnter * vs | Explore | vertical resize 30 | exec "normal \<C-w>\<C-w>"
"autocmd TabEnter * if winnr('$') == 1 | Filetree

" enables mouse
set mouse=a

" map w to ^w
" nmap w <C-w>

" enable jshint
set runtimepath+=~/.vim/bundle/jshint2.vim/
