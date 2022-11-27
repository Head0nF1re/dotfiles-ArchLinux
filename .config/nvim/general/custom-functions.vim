function! FormatCurrentFile()
    let file_path = expand('%:p')
    exec '!php ~/.local/bin/fmt.phar --psr2 --indent_with_space=4 --passes=AlignPHPCode,DoubleToSingleQuote,TrimSpaceBeforeSemicolon,ReplaceIsNull,ShortArray,TightConcat,RestoreComments,SpaceAfterExclamationMark,IndentTernaryConditions --exclude=WordWrap,NewLineBeforeReturn' file_path
endfunction
