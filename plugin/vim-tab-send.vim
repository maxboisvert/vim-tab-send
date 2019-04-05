if exists("g:loaded_vim_tab_send")
  finish
endif
let g:loaded_vim_tab_send = 1

command! -nargs=1 TabSend call TmuxSend(<f-args>)

fun! TmuxSend(c)
    let command = a:c
    let command = substitute(command, '%', expand('%'), "g")
    let command = substitute(command, '@', line('.'), "@")

    call system('tab_send ' . command)
endfun
