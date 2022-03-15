function! FormatCurrentFile()
    let file_path = expand('%:p')
    exec '!php ~/.local/bin/fmt.phar --psr2 --passes=AlignPHPCode,DoubleToSingleQuote,TrimSpaceBeforeSemicolon,ReplaceIsNull,ShortArray,TightConcat,RestoreComments --exclude=WordWrap,NewLineBeforeReturn' file_path
endfunction
