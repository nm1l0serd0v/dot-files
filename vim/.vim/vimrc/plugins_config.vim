""""""""""""""""""""""""""""""
" => nerd tree
""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=30

nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>




""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
" let g:ctrlp_working_path_mode = 1 
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_map = '<c-p>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

set wildignore+=*/tmp/*,*/node_modules/*,*.git/,*/uploads/*
let g:ctrlp_max_height = 7
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee|^tmp\cache\|system\'

"
""""""""""""""""""""""""""""""
" => CommandT
""""""""""""""""""""""""""""""
let g:CommandTCancelMap=['<C-x>', '<C-c>']
let g:CommandTMaxHeight = 15
let g:CommandTSmartCase = 1
let g:CommandTWildIgnore=&wildignore . ",*/bower_components"
set wildignore+=*.o,*.obj,tmp/,.git/
""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => ADdons
""""""""""""""""""""""""""""""
set nocompatible | filetype indent plugin on | syn on
set runtimepath+=/path/to/vam
call vam#ActivateAddons()

""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
ActivateAddons vim-snippets snipmate

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_theme="virtualenv"
" :VirtualEnvDeactivate

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => syntasic
" let g:loaded_syntastic_ruby_rubocop_checker = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:auto_ctags = 1
" let g:auto_ctags_directory_list = ['.git', '.svn']
" let g:auto_ctags_tags_name = 'tags'
" let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
" let g:auto_ctags_filetype_mode = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => easytags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:easytags_always_enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
" let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tender'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vroom 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vroom_use_spring = 1
" let g:vroom_detect_spec_helper = 1
let g:vroom_use_bundle_exec = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => IndientLine 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:indentLine_setColors = 0
let g:indentLine_char = '│'
let g:indentLine_enabled = 1
let g:indentLine_color_term = 236

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

let g:closetag_filenames = "*.html,*.xhtml,*.phtml, *.jsx"