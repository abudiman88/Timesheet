using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Victorion.Tms.Application.Interfaces;
using Victorion.Tms.Domain.Entities;

namespace Victorion.Tms.Persistence.Timesheets
{
    public class TimesheetRepository : ITimesheetRepository
    {
        private readonly TimesheetDbContext _dbContext = null;

        public TimesheetRepository()
        {
            _dbContext = new TimesheetDbContext();
        }

        async Task ITimesheetRepository.CreateTimesheetAsync(Timesheet timesheet)
        {
            await _dbContext.Timesheet.AddAsync(timesheet);
        }
        
         IQueryable<Timesheet> ITimesheetRepository.GetTimesheets()
        {
            return _dbContext.Timesheet;
        }

        async Task<int> ITimesheetRepository.SaveAsync()
        {
            return await _dbContext.SaveChangesAsync();
        }
    }
}
