if exists("g:loaded_vim_tab_send")
  finish
endif
let g:loaded_vim_tab_send = 1

command! -nargs=1 TabSend call TmuxSend(<f-args>)

fun! TmuxSend(c)
    let l:user_comment = substitute(a:c, '%', expand('%'), "g")

    call system('tab_send ' . l:user_comment)
endfun
