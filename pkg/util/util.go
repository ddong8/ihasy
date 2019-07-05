/*
@Time    : 2019/7/4 23:30
@File    : util.go
@Author  : donghaixing
Do have a faith in what you're doing.
Make your life a story worth telling.
*/

package util

import "ihasy/pkg/setting"

// Setup Initialize the util
func Setup() {
	jwtSecret = []byte(setting.AppSetting.JwtSecret)
}
