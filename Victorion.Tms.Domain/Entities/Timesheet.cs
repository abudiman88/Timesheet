using System;
using System.Collections.Generic;
using System.Text;

namespace Victorion.Tms.Domain.Entities
{
    public class Timesheet
    {
        public Guid TimesheetId { get; private set; }
        public Guid ProjectId { get; private set; }
        public Guid StaffId { get; private set; }
        public Guid TimeCodeId { get; private set; }
        public string Description { get; private set; }
        public DateTime StartDateTime { get; private set; }
        public DateTime EndDateTime { get; private set; }
        public DateTime DateCreated { get; private set; }
        public Guid CreatedBy { get; private set; }

        public static Timesheet Create(Guid projectId, Guid staffId, Guid timeCodeId, DateTime startDateTime, DateTime endDateTime, string description, DateTime dateCreated, Guid createdBy)
        {
            var timesheet = new Timesheet()
            {
                ProjectId = projectId,
                StaffId = staffId,
                TimeCodeId = timeCodeId,
                StartDateTime = startDateTime,
                EndDateTime = endDateTime,
                Description = description,
                DateCreated = dateCreated,
                CreatedBy = createdBy
            };

            return timesheet;
        }
    }
}
