using System;
using System.Collections.Generic;
using System.Text;

namespace Victorion.Tms.Domain.Entities
{
    public class User
    {
        public int UserId { get; set; }

        public int PersonId { get; set; }

        public string LoginName { get; set; }

        public string Password { get; set; }

        public DateTime DateCreated { get; set; }

        public User CreatedBy { get; set; }

        public Person Person { get; set; }
    }
}
