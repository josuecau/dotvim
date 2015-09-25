setlocal omnifunc=csscomplete#CompleteCSS
setlocal iskeyword+=#,.,-,%,@-@
let b:switch_custom_definitions=
  \ [
  \   ['width:', 'height:'],
  \   ['min-', 'max-'],
  \   ['left', 'right', 'top', 'bottom'],
  \   ['display: block;', 'display: none;', 'display: inline-block;'],
  \   ['font-weight: bold;', 'font-weight: normal;'],
  \   ['text-transform: uppercase;', 'text-transform: none;'],
  \   ['text-decoration: underline;', 'text-decoration: none;'],
  \   ['relative', 'absolute', 'fixed', 'static'],
  \   ['margin', 'padding'],
  \   ['overflow: hidden;', 'overflow: auto;', 'overflow: visible;'],
  \   [':first-child', ':last-child'],
  \   [':before', ':after'],
  \   [':hover', ':focus', ':active']
  \ ]
