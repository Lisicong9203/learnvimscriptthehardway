"funtcion meow()   "there is an error

function Meow()
    echom "Meow"
endfunction

call Meow()

function GetMeow()
    return "Meow String!"
endfunction

echom GetMeow()


echom Meow()

function TextwidthIsTooWide()
    if &l:textwidth ># 80
        return 1
    endif
endfunction

set textwidth=80
if TextwidthIsTooWide()
    echom "WARNING:Wide text!"
endif

setlocal textwidth=100
if TextwidthIsTooWide()
    echom "WARNING:Wide text!"
endif


"Exercises====================
"Ans : Up to 20 arguments can be used.

"Ans: The name must be made of alphanumeric characters and '_', and must start with a capital or "s:" .  Note that using "b:" or "g:" is not allowed.
"Ans: retu 
