/*
@Time    : 2019/7/4 23:26
@File    : file.go
@Author  : donghaixing
Do have a faith in what you're doing.
Make your life a story worth telling.
*/

package logging

import (
	"fmt"
	"time"

	"ihasy/pkg/setting"
)

// getLogFilePath get the log file save path
func getLogFilePath() string {
	return fmt.Sprintf("%s%s", setting.AppSetting.RuntimeRootPath, setting.AppSetting.LogSavePath)
}

// getLogFileName get the save name of the log file
func getLogFileName() string {
	return fmt.Sprintf("%s%s.%s",
		setting.AppSetting.LogSaveName,
		time.Now().Format(setting.AppSetting.TimeFormat),
		setting.AppSetting.LogFileExt,
	)
}
