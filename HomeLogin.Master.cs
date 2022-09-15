using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GORDIE
{
    public partial class HomeLogin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // Hello Admin link button

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = true;
                    LinkButton2.Visible = true;
                    LinkButton2.Text = "Hello " + Session["fullname"].ToString();
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }
    }
}