vnoremap <leader>y "+y
vnoremap <leader>p "+p
nnoremap <leader>p "+p
nnoremap <leader>db <cmd>bd<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" autopairs
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap {<CR> {<CR>}<ESC>O
