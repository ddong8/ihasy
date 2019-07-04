/*
@Time    : 2019/7/4 23:31
@File    : md5.go
@Author  : donghaixing
Do have a faith in what you're doing.
Make your life a story worth telling.
*/

package util

import (
	"crypto/md5"
	"encoding/hex"
)

// EncodeMD5 md5 encryption
func EncodeMD5(value string) string {
	m := md5.New()
	m.Write([]byte(value))

	return hex.EncodeToString(m.Sum(nil))
}
