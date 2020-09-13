using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentRegisForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Page.Validate();
            if (!Page.IsValid)
                return;
            StudentReg stReg = new StudentReg(firstname.Text, lastname.Text);
            StudentRepository.GetRepository().AddReg(stReg);

            int mball = 0 + int.Parse(mbal.Text);
            int hball = 0 + int.Parse(hbal.Text);
            int rlanbal = 0 + int.Parse(rlan.Text);

            try
            {
                StudentBall studentBall = new StudentBall(mball, hball, rlanbal);
                stReg.StBll.Add(studentBall);

                SampleContext context = new SampleContext();
                context.StudentRegs.Add(stReg);
                context.SaveChanges();
            }
            catch (Exception ex)
            {
                Response.Redirect("Ошибка " + ex.Message);
            }

            Response.Redirect("successfullyAdded.aspx");
        }
    }
}