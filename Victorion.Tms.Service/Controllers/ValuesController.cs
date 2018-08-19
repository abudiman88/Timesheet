using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Victorion.Tms.Application.Timesheets.Commands.CreateTimesheet;

namespace Victorion.Tms.Service.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        private readonly ICreateTimesheetCommand _cmd;

        public ValuesController(ICreateTimesheetCommand cmd)
        {
            this._cmd = cmd;
        }

        // GET api/values
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public async Task<IActionResult> Get(int id)
        {
            var result = await this._cmd.ExecuteAsync(
                new CreateTimesheetModel()
                {
                    ProjectId = Guid.NewGuid(),
                    StaffId = Guid.NewGuid(),
                    CreatedBy = Guid.NewGuid(),
                    TimeCodeId = Guid.NewGuid(),
                    Description = "New Task",
                    StartDateTime = DateTime.Now,
                    EndDateTime = DateTime.Now
                }
            );

            return Ok(result);
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
