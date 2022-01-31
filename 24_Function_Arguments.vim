function DisplayName(name)
    echom "Hello! My name is:"
    echom a:name
endfunction

call DisplayName("Stone")


function UnscopedDisplayName(name)
  echom "Hello!  My name is:"
  echom name
endfunction
"call UnscopedDisplayName("Your Name") "undefined var error


function Varg(...)
    echom a:0
    echom a:1
    echom a:000
endfunction

call Varg("a","b")


function Varg2(foo,...)
    echom a:foo
    echom a:0
    echom a:1
    echom a:000
endfunction

call Varg2("a", "b", "c")


function Assign(foo)
    let a:foo = "Nope"
    echom a:foo
endfunction

"call Assign("test")  "Cannot change read-only variable "a:foo"

function AssignGood(foo)
    let foo_tmp = a:foo
    let foo_tmp = "Yep"
    echom foo_tmp
endfunction

call AssignGood("test")


" examples in :help local-variables
function Table(title, ...)
  echohl Title
  echo a:title
  echohl None
  echo a:0 . " items:"
  for s in a:000
    echon ' ' . s
  endfor
endfunction

call Table("Table", "line1", "line2")
