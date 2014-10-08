setlocal omnifunc=csscomplete#CompleteCSS
setlocal iskeyword+=#,.,-,%,@-@
let g:switch_custom_definitions=
  \ [
  \   ['width:', 'height:'],
  \   ['min-', 'max-'],
  \   ['left', 'right', 'top', 'bottom'],
  \   ['display: block;', 'display: none;', 'display: inline-block;'],
  \   ['font-weight: bold;', 'font-weight: normal;'],
  \   ['text-transform: uppercase;', 'text-transform: none;'],
  \   ['text-decoration: underline;', 'text-decoration: none;'],
  \   ['repeat', 'no-repeat'],
  \   ['relative', 'absolute', 'fixed', 'static'],
  \   ['overflow: hidden;', 'overflow: auto;', 'overflow: visible;'],
  \   [':first-child', ':last-child'],
  \   [':before', ':after']
  \ ]
