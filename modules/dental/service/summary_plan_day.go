package service

import (
	"dilu/common/consts"
	"dilu/modules/dental/models"
	"dilu/modules/dental/service/dto"
	smodels "dilu/modules/sys/models"
	"dilu/modules/sys/service"

	"github.com/baowk/dilu-core/core/base"
)

type SummaryPlanDayService struct {
	*base.BaseService
}

var SerSummaryPlanDay = SummaryPlanDayService{
	base.NewService(consts.DB_CRM),
}

func (s *SummaryPlanDayService) GetByDay(teamId, userId, day int, res *models.SummaryPlanDay) error {
	return s.GetByWhere(models.SummaryPlanDay{
		TeamId: teamId,
		UserId: userId,
		Day:    day,
	}, res)
}

func (s *SummaryPlanDayService) Create(teamId, userId int, data *models.SummaryPlanDay) error {
	data.TeamId = teamId
	if data.UserId == 0 {
		data.UserId = userId
	}
	var tu smodels.SysMember
	if err := service.SerSysMember.GetMember(data.TeamId, data.UserId, &tu); err != nil {
		return err
	}
	data.DeptPath = tu.DeptPath

	return s.BaseService.Create(data)
}

func (s *SummaryPlanDayService) Update(teamId, userId int, data *models.SummaryPlanDay) error {
	data.TeamId = teamId
	if data.UserId == 0 {
		data.UserId = userId
	}
	var tu smodels.SysMember
	if err := service.SerSysMember.GetMember(data.TeamId, data.UserId, &tu); err != nil {
		return err
	}
	data.DeptPath = tu.DeptPath

	return s.BaseService.UpdateById(data)
}

func (s *SummaryPlanDayService) Page(req dto.SummaryPlanDayGetPageReq, teamId, userId int, list *[]models.SummaryPlanDay, total *int64) error {
	return s.DB().Where("team_id = ?", teamId).Order("id desc").Offset(req.GetOffset()).Limit(req.GetSize()).
		Find(list).Offset(-1).Limit(-1).Count(total).Error
}
