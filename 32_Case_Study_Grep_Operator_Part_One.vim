"nnoremap <leader>g :grep -R something .<cr>
"test  foo-bar
" foo;ls
" That's that's map
"nnoremap <leader>g :grep -R <cWORD> .<cr>

"nnoremap <leader>g :grep -R '<cWORD>' .<cr>

"nnoremap <leader>g :execute "grep -R '<cWORD>' ."<cr>
"nnoremap <leader>g :execute "grep -R " . shellescape("<cWORD>") . " ."<cr>

"nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>
nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
"nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

"Exercises
"Ans1:
nnoremap <C-J> :cnext<cr>
nnoremap <C-K> :cprevious<cr>
nnoremap <C-C> :copen 20<cr>
