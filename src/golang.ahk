!i::

	Menu, golangMenu, Add, ginit, golangHandler2
	Menu, golangMenu, Add, goserver, golangHandler2
	
	
	Menu, golangMenu, Add,
	Menu, golangMenu, Add,
	
	Menu, golangMenu, Add, 命令行问答式初级交互, golangHandler2
	
	Menu, golangMenu, Add,
	Menu, golangMenu, Add,
	
	Menu, golangMenu, Add, go run index.go, golangHandler3
	Menu, golangMenu, Add, go build index.go, golangHandler3
	Menu, golangMenu, Add, go install index.go, golangHandler3

	Menu, golangMenu, Show
	Menu, golangMenu, DeleteAll
return

golangHandler2:
v := A_ThisMenuItem
_send(v, true, true)
return

golangHandler3:
v := A_ThisMenuItem
cs(v)
return

golangHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(

)
}

if (v == "命令行问答式初级交互") {
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
}


code(Var)
return

::gohelloweb::
::gohttp::
::ghttp::
::goserver::
::gserve::
::goserve::
Var =
(
package main

import (
	"fmt"
	"net/http"
`)

func handler(writer http.ResponseWriter, request *http.Request) {
	fmt.Fprintf(writer, "Hello World, `%s!", request.URL.Path[1:])
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
)
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