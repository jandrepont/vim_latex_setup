" Plug installations "
call plug#begin('~/.vim/plugged')
"Vimtex"
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_complete_recursive_bib = 1
let g:Tex_MultipleCompileFormats='pdf,bbl,pdf'

"Tab stuff"
Plug 'ervandew/supertab'

"Auto Complete"
Plug 'Valloric/YouCompleteMe'

"Snippets"
Plug 'SirVer/ultisnips' | Plugin 'honza/vim-snippets'

"Use correct directory
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/ultisnips/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
"let g:UltiSnipsUsePythonVersion = 2

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"let g:UltiSnipsListSnippets "<c-tab>"

call plug#end()


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab




if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" Vim commands for use with inkscape-figure"
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>




