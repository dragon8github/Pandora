!i::


	Menu, golangMenu, Add, ginit, golangHandler2


	Menu, golangMenu, Show
	Menu, golangMenu, DeleteAll
return

golangHandler2:
v := A_ThisMenuItem
_send(v, true, true)
return

golangHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {

}

code(Var)
return

::ginit::
::gohello::
::hellogo::
::goinit::
Var =
(
package main

import "fmt"

func main() {
	fmt.Println("Hello, 世界")
}
)
code(Var)
return
