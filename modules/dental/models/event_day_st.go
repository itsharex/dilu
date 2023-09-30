package models

// EventDaySt
type EventDaySt struct {
	Id               int    `json:"id" gorm:"type:int unsigned;primaryKey;autoIncrement;comment:主键"` //主键
	Day              int    `json:"day" gorm:"type:int unsigned;comment:时间"`                         //时间
	TeamId           int    `json:"teamId" gorm:"type:int unsigned;comment:团队id"`                    //团队id
	UserId           int    `json:"userId" gorm:"type:int unsigned;comment:用户id"`                    //用户id
	DeptPath         string `json:"deptPath" gorm:"type:varchar(255);comment:部门路径"`                  //路径
	NewCustomerCnt   int    `json:"newCustomerCnt" gorm:"type:int unsigned;comment:留存"`              //留存
	FirstDiagnosis   int    `json:"firstDiagnosis" gorm:"type:int unsigned;comment:初诊"`              //初诊
	FurtherDiagnosis int    `json:"furtherDiagnosis" gorm:"type:int unsigned;comment:复诊"`            //复诊
	Deal             int    `json:"deal" gorm:"type:int unsigned;comment:成交"`                        //成交
	Invitation       int    `json:"invitation" gorm:"type:int unsigned;comment:明日邀约"`                //明日邀约
	Rest             int    `json:"rest" gorm:"type:tinyint;comment:休息"`                             //休息
	CreatedAt        int    `json:"createdAt" gorm:"type:int unsigned;comment:创建时间"`                 //创建时间
	UpdatedAt        int    `json:"updatedAt" gorm:"type:int unsigned;comment:更新时间"`                 //更新时间
}

func (EventDaySt) TableName() string {
	return "event_day_st"
}

func NewEventDaySt() *EventDaySt {
	return &EventDaySt{}
}

func (e *EventDaySt) SetId(id int) *EventDaySt {
	e.Id = id
	return e
}
func (e *EventDaySt) SetDay(day int) *EventDaySt {
	e.Day = day
	return e
}
func (e *EventDaySt) SetTeamId(teamId int) *EventDaySt {
	e.TeamId = teamId
	return e
}
func (e *EventDaySt) SetUserId(userId int) *EventDaySt {
	e.UserId = userId
	return e
}
func (e *EventDaySt) SetNewCustomerCnt(newCustomerCnt int) *EventDaySt {
	e.NewCustomerCnt = newCustomerCnt
	return e
}
func (e *EventDaySt) SetFirstDiagnosis(firstDiagnosis int) *EventDaySt {
	e.FirstDiagnosis = firstDiagnosis
	return e
}
func (e *EventDaySt) SetFurtherDiagnosis(furtherDiagnosis int) *EventDaySt {
	e.FurtherDiagnosis = furtherDiagnosis
	return e
}
func (e *EventDaySt) SetDeal(deal int) *EventDaySt {
	e.Deal = deal
	return e
}
func (e *EventDaySt) SetRest(rest int) *EventDaySt {
	e.Rest = rest
	return e
}
func (e *EventDaySt) SetCreatedAt(createdAt int) *EventDaySt {
	e.CreatedAt = createdAt
	return e
}
func (e *EventDaySt) SetUpdatedAt(updatedAt int) *EventDaySt {
	e.UpdatedAt = updatedAt
	return e
}
