using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GORDIE
{
    public partial class Reports_Accounting_Links1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_RA.Visible = false;
        }

        protected void btn_Org_Click(object sender, EventArgs e)
        {
            if (ddl_ServiceRegion.SelectedItem.Value == "-1")
            {
                lbl_RA.Visible = true;
                lbl_RA.Text = ("Please Select a Service Region");

            }
            else
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd2 = new SqlCommand("select Org_Name, Org_Type from Demo_NT_Organization where Service_region ='" + ddl_ServiceRegion.SelectedItem.Text + "'", con);
                    con.Open();

                    ddl_Org_list.DataSource = cmd2.ExecuteReader();
                    ddl_Org_list.DataTextField = "Org_Name";
                    ddl_Org_list.DataBind();

                }
            }
        }

        protected void btn_RA_Click_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_Into_Demo_Reports_Accounting_Links", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@ServiceRegion", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Org_Name", ddl_Org_list.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Monthly_HRP_Invoice_Folder", txt_Monthly.Text);
                cmd.Parameters.AddWithValue("@Quarterly_Stmt_Folder", txt_Q1.Text);
                cmd.Parameters.AddWithValue("@Quarterly_NO_report", txt_Q2.Text);
                cmd.Parameters.AddWithValue("@Quarterly_NM_Report", txt_Q3.Text);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@RA_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                lbl_RA.Visible = true;
                lbl_RA.Text = "Report &Accounting Links with ID = " + ID + " got inserted in Demo_Reports_Accounting_Links table. Thanks!";
            }
        }
    }
}