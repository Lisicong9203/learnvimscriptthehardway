function! Sorted(l)
    let new_list  = deepcopy(a:l)
    call sort(new_list)
    return new_list
endfunction

echo Sorted([3, 2, 4, 1])

function! Reverse(l)
    let new_list  = deepcopy(a:l)
    call reverse(new_list)
    return new_list
endfunction

echo Reverse([3, 2, 4, 1])

function! Append(l, val)
    let new_list  = deepcopy(a:l)
    call add(new_list, a:val)
    return new_list
endfunctio

echo Append([3, 2, 4, 1], 5)

function! Assoc(l, i, val)
    let new_list  = deepcopy(a:l)
    let new_list[a:i]  = a:val
    return new_list
endfunction

echo Assoc([3, 2, 4, 1], 3, 5)

function! AssocRange(l, start, vals)
    let new_list  = deepcopy(a:l)
    let new_list[a:start:a:start+len(a:vals)-1]  = a:vals
    return new_list
endfunction

echo AssocRange([1, 2, 3, 4, 5, 6, 7], 3, [6, 5, 4])


function! Pop(l, i)
    let new_list  = deepcopy(a:l)
    call remove(new_list, a:i)
    return new_list
endfunction

let Myfunc  = function("Append")
"let Myfunc  = function("add")
echo Myfunc([1, 2], 5)

let funcs  = [function("Append"), function("Pop")]
echo funcs[1](['a', 'b', 'c'], 1)

function! Mapp(fn, l)
    let new_list  = deepcopy(a:l)
    echo string(a:fn) . '(v:val)'
    call map(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

let mylist  = [[1, 2], [3, 4]]
echo Mapp(function("Reverse"), mylist)

let myTest  = [1, 2, 3, 4, 5]
execute "call function('reverse')(myTest)"
echo myTest

function! Filtered(fn, l)
    let new_list  = deepcopy(a:l)
    call filter(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

let mylist  = [[1, 2], [], ['foo'], []]
echo Filtered(function('len'), mylist)

function! Removed(fn, l)
    let new_list  = deepcopy(a:l)
    call filter(new_list, '!' . string(a:fn) . '(v:val)')
    return new_list
endfunction

let mylist  = [[1, 2], [], ['foo'], []]
echo Removed(function('len'), mylist)



"Exercises

function! Reduced(fn, l)
    let new_list  = deepcopy(a:l)
    let result  = reduce(new_list, a:fn)
    return result
endfunction

let mylist  = range(1, 5)
echo Reduced({acc, val -> acc + val}, mylist)

function! Mylen(collection)
    if type(a:collection)  ==# v:t_list
        if len(a:collection) >= 1
            return len(a:collection[0])>3
        endif
        return 0
    endif
    return len(a:collection)>3
endfunction

function! Removed(fn, l)
    let tmp_l  = deepcopy(a:l)
    if type(tmp_l)  ==# v:t_list
        call filter(tmp_l, string(a:fn) . '(v:val)')
    elseif type(tmp_l)  ==# v:t_dict
        call filter(tmp_l, string(a:fn) . '(v:key)')
    endif
    return tmp_l
endfunction

let mylist  = [[1, 5], ['china'], [], [""], ["A"], ["QWER"]]
let mydict  = {"":"empty", "a":"A", "abcd":"ABCD", }
echo Removed(function("Mylen"), mylist)
echo Removed(function("Mylen"), mydict)
