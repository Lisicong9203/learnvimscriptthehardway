echom expand("%")
echom expand("%:p")
echom fnamemodify("foo.txt", ":p")

echom expand('%')
echom expand('%:p')
echom fnamemodify('foo.txt', ':p')

echo "\n\n--------------Listing Files----------------"
echo globpath('.', '*')
echo type(globpath('.', '*'))
echo split(globpath('.', '*'), '\n')
echo split(globpath('.', '*.txt'), "\n")


