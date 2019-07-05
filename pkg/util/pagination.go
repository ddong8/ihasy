/*
@Time    : 2019/7/4 23:32
@File    : pagination.go
@Author  : donghaixing
Do have a faith in what you're doing.
Make your life a story worth telling.
*/

package util

import (
	"github.com/Unknwon/com"
	"github.com/gin-gonic/gin"

	"ihasy/pkg/setting"
)

// GetPage get page parameters
func GetPage(c *gin.Context) int {
	result := 0
	page := com.StrTo(c.Query("page")).MustInt()
	if page > 0 {
		result = (page - 1) * setting.AppSetting.PageSize
	}

	return result
}
