augroup closer
  au!
  autocmd FileType *
    \ let b:closer = 1 |
    \ let b:closer_flags = '([{'
    \ let b:closer_no_semi = 0 |
    \ let b:closer_semi_ctx = 0

  au FileType javascript,javascript.jsx,vue,typescript
    \ let b:closer = 1 |
    \ let b:closer_flags = '([{;' |
    \ let b:closer_no_semi = '^\s*\(function\|class\|if\|else\)' |
    \ let b:closer_semi_ctx = ')\s*{$'
  au FileType markdown,txt
    \ let b:closer = 0 |

  autocmd FileType * call closer#enable()
augroup END
