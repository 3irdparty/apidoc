// Copyright 2016 by caixw, All rights reserved.
// Use of this source code is governed by a MIT
// license that can be found in the LICENSE file.

package types

import (
	"github.com/caixw/apidoc/locale"
	"github.com/caixw/apidoc/vars"
)

// SyntaxError 语法错误
type SyntaxError struct {
	File    string // 发生错误的文件名
	Line    int    // 发生错误的行号
	Message string // 具体错误信息
}

// OptionsError 提供对配置项错误的描述
type OptionsError struct {
	Field   string
	Message string
}

func (err *SyntaxError) Error() string {
	return locale.Sprintf(locale.SyntaxError, err.File, err.Line, err.Message)
}

func (err *OptionsError) Error() string {
	return locale.Sprintf(locale.OptionsError, vars.ConfigFilename, err.Field, err.Message)
}
