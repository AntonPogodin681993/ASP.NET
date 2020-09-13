using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentRepository
/// </summary>
public class StudentRepository
{
    private static StudentRepository repos = new StudentRepository();
    private List<StudentReg> stlists = new List<StudentReg>();
    public static StudentRepository GetRepository()
    {
        return repos;
    }

    public IEnumerable<StudentReg> GetAllReg()
    {
        return stlists;
    }

    public void AddReg(StudentReg stlist)
    {
        stlists.Add(stlist);
    }
    public StudentRepository()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}