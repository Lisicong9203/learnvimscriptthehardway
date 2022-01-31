echo ['foo', 3, 'bar']
echo ['foo', [3, 'bar']]

echo [0, [1, 2]][1]
echo [0, [1, 2]][-2]

echo ['a', 'b', 'c', 'd', 'e'][0:2]
echo ['a', 'b', 'c', 'd', 'e'][0:10000]

echo "-----------------"
echo ['a', 'b', 'c', 'd', 'e'][-2:-1]
echo ['a', 'b', 'c', 'd', 'e'][:1]
echo ['a', 'b', 'c', 'd', 'e'][3:]

echo "-----------------"
echo 'abcd'[0:2]
echo "abcd"[1:3]
"Note: there will output empty by next line
echo "abcd"[-1]
echo "abcd"[-1] . "abcd"[-2:]

echo "-----------------"
echo ['a', 'b'] + ['c']
"echo ['a'] * 3


echo "-----------------"
let foo = ['a']
call add(foo, 'b')
echo foo
echo len(foo)

echo get(foo, 0, 'default')
echo get(foo, 100, 'default')

echo index(foo, 'b')
echo index(foo, 'nope')

echo join(foo)
echo join(foo, '---')
echo join([1, 2, 3], '')

call reverse(foo)
echo foo
call reverse(foo)
echo foo
