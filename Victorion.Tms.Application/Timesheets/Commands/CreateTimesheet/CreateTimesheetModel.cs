using System;
using System.Collections.Generic;
using System.Text;

namespace Victorion.Tms.Application.Timesheets.Commands.CreateTimesheet
{
    public class CreateTimesheetModel
    {
        public Guid ProjectId { get; set; }
        public Guid StaffId { get; set; }
        public Guid TimeCodeId { get; set; }
        public DateTime StartDateTime { get; set; }
        public DateTime EndDateTime { get; set; }
        public string Description { get; set; }
        public Guid CreatedBy { get; set; }
    }
}
