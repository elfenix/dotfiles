if !exists("after_autocmds_loaded")
    let after_autocmds_loaded = 1
    au BufNewFile,BufRead * source ~/.vim/after/common_syntax.vim
endif

