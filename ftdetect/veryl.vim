autocmd BufRead,BufNewFile *.veryl call s:set_veryl_filetype()

function! s:set_veryl_filetype() abort
    if &filetype !=# 'veryl'
        set filetype=veryl
    endif
endfunction
