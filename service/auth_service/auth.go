/*
@Time    : 2019/7/4 23:13
@File    : auth.go
@Author  : donghaixing
Do have a faith in what you're doing.
Make your life a story worth telling.
*/

package auth_service

import "github.com/EDDYCJY/go-gin-example/models"

type Auth struct {
	Username string
	Password string
}

func (a *Auth) Check() (bool, error) {
	return models.CheckAuth(a.Username, a.Password)
}
