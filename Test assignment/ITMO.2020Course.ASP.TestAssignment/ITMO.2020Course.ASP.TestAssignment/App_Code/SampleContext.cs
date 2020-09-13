using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

/// <summary>
/// Summary description for SampleContext
/// </summary>
public class SampleContext : DbContext
{
    public SampleContext() : base("AcademicPerformanceDB") { }
    public DbSet<StudentReg> StudentRegs { get; set; }
    public DbSet<StudentBall> StudentBalls { get; set; }
}