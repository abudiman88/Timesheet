using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using Victorion.Timesheet.Domain.Entities;

namespace Victorion.Timesheet.Persistence
{
    public class TimesheetDbContext : DbContext
    {
        public DbSet<Timesheet> Timesheets;



    }
}
