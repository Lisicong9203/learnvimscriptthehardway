execute "echom 'Hello,world!'"

execute "rightbelow vsplit " . bufname("#")

"Exercises
nnoremap <leader>rvb :<c-u>execute "rightbelow vsplit" . bufname("#")<cr>

