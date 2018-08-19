using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Victorion.Tms.Domain.Entities;

namespace Victorion.Tms.Application.Interfaces
{
    public interface ITimesheetRepository
    {
        IQueryable<Timesheet> GetTimesheets();

        Task CreateTimesheetAsync(Timesheet timesheet);

        Task<int> SaveAsync();
    }
}
