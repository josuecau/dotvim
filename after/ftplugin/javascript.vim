setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal iskeyword+=$
setlocal iskeyword-=.
let b:ale_fixers = ['standard']
let b:ale_javascript_eslint_suppress_missing_config = 1
