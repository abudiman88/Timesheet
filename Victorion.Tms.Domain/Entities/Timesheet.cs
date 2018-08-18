using System;
using System.Collections.Generic;
using System.Text;

namespace Victorion.Tms.Domain.Entities
{
    public class Timesheet
    {
        public int TimesheetId { get; set; }
        public DateTime StartDateTime { get; set; }
        public DateTime EndDateTime { get; set; }
        public DateTime DateCreated { get; set; }
        public Staff Staff { get; set; }
        public TimeCode TimeCode { get; set; }
        public User CreatedBy { get; set; }
        public Project Project { get; set; }
    }
}
