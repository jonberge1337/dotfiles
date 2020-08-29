if !isdirectory($HOME."/.vim/sessions")
  call mkdir($HOME."/.vim/sessions","p")
endif

let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_directory = $HOME."/.vim/sessions"
