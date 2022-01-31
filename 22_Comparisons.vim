if 10 > 1
    echom "foo"
endif


if 10 > 2001
    echom "bar"
endif

if 10 == 11
    echom "first"
elseif 10 == 10
    echom "second"
endif


if "foo" == "bar"
    echom "one"
elseif "foo" == "foo"
    echom "two"
endif

set noignorecase
if "foo" == "FOO"
    echom "vim is case insensitive"
elseif "foo" == "foo"
    echom "vim is case sensitive"
endif


set ignorecase
if "foo" == "FOO"
    echom "vim is case insensitive"
elseif "foo" == "foo"
    echom "vim is case sensitive"
endif


set noignorecase
if "foo" ==? "FOO"
    echom "first"
elseif "foo" ==? "foo"
    echom "second"
endif


set ignorecase
if "foo" ==# "FOO"
    echom "one"
elseif "foo" ==# "foo"
    echom "two"
endif



