echo {'a': 1, 100: 'foo'}
echo {'a': 1, 100: 'foo', }

echo {'a': 1, 100: 'foo', }['a']
echo {'a': 1, 100: 'foo', }[100]

let foo = {'a': 1}
let foo.a = 100
let foo.b = 200
echo foo

let test = remove(foo, 'a')
unlet foo.b
echo foo
echo test

" Key not present in Dictionary: "asdf"
" unlet foo['asdf']
" let remove_element = remove(foo, 'asdf')

echo get({'a': 100}, 'a', 'default')
echo get({'a': 100}, 'b', 'default')

echom has_key({'a': 100}, 'a')
echom has_key({'a': 100}, 'b')

echo items({'a': 100, 'b': 200})

for [key, value] in items({'a': 100, 'b': 200})
   echo key . ': ' . value
endfor
