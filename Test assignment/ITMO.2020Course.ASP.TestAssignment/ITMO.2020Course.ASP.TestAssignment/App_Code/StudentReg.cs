using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Dynamic;
using System.ComponentModel.DataAnnotations;


public class StudentReg
{
    [Key] public int StudentRegId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public virtual List<StudentBall> StBll { get; set; }

    //public int SumBall { get; set; }
    

    public StudentReg (string firstname, string lastname)
    {
        FirstName = firstname;
        LastName = lastname;
        StBll = new List<StudentBall>();
    }
    public StudentReg() { }
}


public class StudentBall
{
    [Key] public int StudentBallId { get; set; }
    public int MathBall { get; set; }
    public int HistBall { get; set; }
    public int RusLang { get; set; }
    public int SumBalls { get; set; }
    public StudentReg StRg {get; set;}
    public StudentBall () { }

    public StudentBall (int mbal, int hbal, int rlan)
    {
        MathBall = mbal;
        HistBall = hbal;
        RusLang = rlan;
        SumBalls = Summation(mbal, hbal, rlan);

    }
    public int Summation (int mbal, int hbal, int rlan)
    {
        int sumBall = mbal + hbal + rlan;
        return sumBall;
    }
}