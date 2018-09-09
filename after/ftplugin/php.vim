setlocal omnifunc=phpcomplete#CompletePHP
setlocal iskeyword+=$
setlocal iskeyword-=-
let b:switch_custom_definitions=
  \ [
  \   ['public', 'private']
  \ ]
let b:ale_fixers = ['php_cs_fixer']
