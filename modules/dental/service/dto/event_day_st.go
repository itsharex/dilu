package dto

import (
	"github.com/baowk/dilu-core/core/base"
)

type EventDayStGetPageReq struct {
	base.ReqPage `search:"-"`
}

// EventDaySt
type EventDayStDto struct {
	Id               int `json:"id"`               //主键
	Day              int `json:"day"`              //时间
	TeamId           int `json:"teamId"`           //团队id
	UserId           int `json:"userId"`           //用户id
	NewCustomerCnt   int `json:"newCustomerCnt"`   //留存
	FirstDiagnosis   int `json:"firstDiagnosis"`   //初诊
	FurtherDiagnosis int `json:"furtherDiagnosis"` //复诊
	Deal             int `json:"deal"`             //成交
	Invitation       int `json:"invitation"`       //明日邀约
	Rest             int `json:"rest"`             //休息
}