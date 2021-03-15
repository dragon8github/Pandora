::ginit::
::gin.init::
::gininit::
::go.init::
::goinit::
Var =
(
package main

import "fmt"

func main()  {
   var a string = "hello world"

   fmt.Println(a)
}
---
package main

import (
	"github.com/gin-gonic/gin"
)


func main() {
	// 携带基础中间件：logger
	r := gin.Default()

	r.POST("/test", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"msg": "success",
		})
	})

	// listen and serve on 0.0.0.0:8080
	r.Run()
}
)
txtit(Var)
return