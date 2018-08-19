using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Victorion.Tms.Application.Timesheets.Commands.CreateTimesheet
{
    public interface ICreateTimesheetCommand
    {
        Task<int> ExecuteAsync(CreateTimesheetModel model);
    }
}
