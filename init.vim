" Bootstrap vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

source ~/.config/nvim/core.vim
for config_file in glob("~/.config/nvim/config/*.vim", 1, 1)
    execute 'source' fnameescape(config_file)
endfor
