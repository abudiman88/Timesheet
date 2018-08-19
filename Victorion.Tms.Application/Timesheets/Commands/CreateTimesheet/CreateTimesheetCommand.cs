using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Victorion.Tms.Application.Interfaces;
using Victorion.Tms.Domain.Entities;

namespace Victorion.Tms.Application.Timesheets.Commands.CreateTimesheet
{
    public class CreateTimesheetCommand : ICreateTimesheetCommand
    {
        private readonly ITimesheetRepository _repository;

        public CreateTimesheetCommand(
            ITimesheetRepository repository)
        {
            this._repository = repository;
        }

        async Task<int> ICreateTimesheetCommand.ExecuteAsync(CreateTimesheetModel model)
        {
            var timesheet = Timesheet.Create(
                model.ProjectId, 
                model.StaffId, 
                model.TimeCodeId, 
                model.StartDateTime, 
                model.EndDateTime, 
                model.Description,
                DateTime.UtcNow,
                model.CreatedBy);

            await this._repository.CreateTimesheetAsync(timesheet);

            return await this._repository.SaveAsync();
        }
    }
}
