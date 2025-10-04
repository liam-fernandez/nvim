nnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>db <cmd>bd<CR>

" autopairs
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap {<CR> {<CR>}<ESC>O