"setlocal foldmethod=indent
"setlocal foldignore=

setlocal foldmethod=expr
setlocal foldexpr=GetPotionFold(v:lnum)

function! GetPotionFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))
    
    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif next_indent > this_indent
        return '>' . next_indent
    endif
endfunction

function! IndentLevel(lnum)
    let indentnum = indent(a:lnum) / &shiftwidth
    return indentnum
endfunction

function! NextNonBlankLine(lum)
    let numlines = line('$')
    let currentline = a:lnum + 1
    
    while currentline <= numlines
        if getline(currentline)  =~? "\v\S"
            return currentline
        endif
        let currnetline += 1
    endwhile

    return -2
endfunction
