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
::go.hello::
::go.init::
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

>^g::
cs("go run main.go")
return

::gop::
::gp::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
fmt.Println(%t%, "hello")
)
code(Var)
Send, {left 2}
return

::go.input::
::go.read::
Var =
(
package main

import "fmt"

var (
    FirstName, SecondNames string
`)

func main() {
	fmt.Println("input your name")
	fmt.Scanln(&FirstName, &SecondNames)
	fmt.Printf("Hi `%s `%s!\n", FirstName, SecondNames)
}
)
code(Var)
return