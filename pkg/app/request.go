/*
@Time    : 2019/7/4 23:20
@File    : request.go
@Author  : donghaixing
Do have a faith in what you're doing.
Make your life a story worth telling.
*/

package app

import (
	"github.com/astaxie/beego/validation"

	"ihasy/pkg/logging"
)

// MarkErrors logs error logs
func MarkErrors(errors []*validation.Error) {
	for _, err := range errors {
		logging.Info(err.Key, err.Message)
	}

	return
}
