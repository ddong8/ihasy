/*
@Time    : 2019/7/4 23:20
@File    : response.go
@Author  : donghaixing
Do have a faith in what you're doing.
Make your life a story worth telling.
*/

package app

import (
	"github.com/gin-gonic/gin"

	"ihasy/pkg/e"
)

type Gin struct {
	C *gin.Context
}

type Response struct {
	Code int         `json:"code"`
	Msg  string      `json:"msg"`
	Data interface{} `json:"data"`
}

// Response setting gin.JSON
func (g *Gin) Response(httpCode, errCode int, data interface{}) {
	g.C.JSON(httpCode, Response{
		Code: httpCode,
		Msg:  e.GetMsg(errCode),
		Data: data,
	})
	return
}
