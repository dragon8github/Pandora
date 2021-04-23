>+F12::
WinGet, OutVar, Transparent, A

if (!OutVar|| OutVar != 255) {
  WinSet, Transparent, 255, A
} else {
  WinSet, Transparent, 35, A
}
return
