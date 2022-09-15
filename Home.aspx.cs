using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GORDIE
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cutomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer_Form.aspx");
        }

        protected void Organization_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Organization_Form.aspx");
        }

        protected void Individual_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Individual_Form.aspx");
        }

        protected void Project_Info_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Project_Info_Basic_Form.aspx");
        }

        protected void Project_Plan_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Project_Plan_Form.aspx");
        }

        protected void Project_Links_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Project_Links_Form.aspx");
        }

        protected void Training_Links_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TrainingLinks.aspx");
        }

        protected void Active_Projects_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Active_Project_Links.aspx");
        }

        protected void Work_Resources_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Work_Resources_Links.aspx");
        }

        protected void Reports_Accounting_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports_Accounting_Links.aspx");
        }

        protected void ShowCaseBilling_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Showcase_Billing.aspx");
        }

        protected void NewProjectOpp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/New_Project_Opportunities.aspx");
        }
    }
}