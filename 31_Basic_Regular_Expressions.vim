" text for exercies{{{
"max = 10
"
"print "Starting"
"
"for i in range(max):
"    print "Counter:", i
"
"print "Done"
"}}}

set hlsearch incsearch

"execute "normal! gg/print\<CR>"
"execute "normal! gg/print\<CR>n"
"execute "normal! G?print\r"
"
"execute "normal! gg/for .+ in .+:\r"

"Notic: echo "normal! gg/for .\\+ in .\\+:\r"
"execute "normal! gg/for .\\+ in .\\+:\r"

execute 'normal! gg/for .\+ in .\+:\r'

"execute "normal! gg" . '/for .\+ in .\+:' ."\r"
"echo "normal! gg" . "\t"  . '/for .\+ in .\+:' 

"execute "normal! gg" . '/\vfor .+ in .+:' . "\r"



"Exercises
"Ans:
    " highlight MyGroup ctermbg=red guibg=red     
    " match MyGroup /\vfor/ 
    " match ErrorMsg /\vfor/ 
"Ans:
nnoremap <leader>w  :match ErrorMsg /\v +$/<cr>
nnoremap <leader>W  :match none<cr>
nnoremap / /\v


"stop highlighting items from the last search
nnoremap <F2> :nohlsearch<cr>
