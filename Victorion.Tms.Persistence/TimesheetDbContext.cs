using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Logging.Console;
using System;
using System.Collections.Generic;
using System.Text;
using Victorion.Tms.Domain.Entities;

namespace Victorion.Tms.Persistence
{
    public class TimesheetDbContext : DbContext
    {

        public static readonly LoggerFactory MyConsoleLoggerFactory
            = new LoggerFactory(new[] {
                new ConsoleLoggerProvider((category, level)
                    => category == DbLoggerCategory.Database.Command.Name
                        && level == LogLevel.Information, true)
            });

        public DbSet<Timesheet> Timesheet { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {            
            //modelBuilder.Entity<Person>()
            //    .HasOne(u => u.User)
            //    .WithOne(p => p.Person)
            //    .HasForeignKey<User>(b => b.PersonId);

            base.OnModelCreating(modelBuilder);
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder
                .UseLoggerFactory(MyConsoleLoggerFactory)
                .UseSqlServer("Data Source=.;Initial Catalog=Timesheet;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Connect Timeout=60;Encrypt=False;TrustServerCertificate=True");

            base.OnConfiguring(optionsBuilder);
        }
    }
}
