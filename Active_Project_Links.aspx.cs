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
    public partial class Active_Project_Links1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_APL.Visible = false;
        }

        protected void btn_ACT_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_into_Demo_Active_Project_links", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Updated_Date", txt_Today.Text);
                cmd.Parameters.AddWithValue("@Project_plan_ID", txt_PrjPlanID.Text);
                cmd.Parameters.AddWithValue("@Project_Folder_active", txt_T28.Text);
                cmd.Parameters.AddWithValue("@Project_Plan_Folder_active", txt_T29.Text);
                cmd.Parameters.AddWithValue("@Customer_Team_Area_Folder", txt_T30.Text);
                cmd.Parameters.AddWithValue("@Documents_Folder", txt_T31.Text);
                cmd.Parameters.AddWithValue("@Project_Plan_Overview_Folder", txt_T32.Text);
                cmd.Parameters.AddWithValue("@Customer_Reports_Folder", txt_T33.Text);
                cmd.Parameters.AddWithValue("@Receipts_Depot_Folder", txt_T34.Text);
                cmd.Parameters.AddWithValue("@Draft_Billing_Folder", txt_T35.Text);
                cmd.Parameters.AddWithValue("@Final_Invoices_Folder", txt_T36.Text);
                cmd.Parameters.AddWithValue("@Monthly_Invoices_Folder", txt_T37.Text);
                cmd.Parameters.AddWithValue("@Project_Closeout_Folder", txt_T38.Text);
                cmd.Parameters.AddWithValue("@FINAL_Project_Scope_Specification_PDF", txt_39.Text);
                cmd.Parameters.AddWithValue("@Baseline_Project_Plan_Quote_PDF", txt_40.Text);
                cmd.Parameters.AddWithValue("@Baseline_Project_Plan_Overview_PDF", txt_41.Text);
                cmd.Parameters.AddWithValue("@Customer_Weekly_Project_Status_Report_PDF", txt_42.Text);
                cmd.Parameters.AddWithValue("@Network_Owner_Weekly_Project_Status_Report_PDF", txt_43.Text);
                cmd.Parameters.AddWithValue("@Draft_Services_Billing_PDF", txt_44.Text);
                cmd.Parameters.AddWithValue("@Draft_Materials_Etc_Billing_PDF", txt_45.Text);
                cmd.Parameters.AddWithValue("@Final_Monthly_Milestone_Customer_Invoice_PDF", txt_46.Text);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@Active_Links_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                lbl_APL.Visible = true;
                lbl_APL.Text = "Project Plan with ID = " + ID + " got inserted in Demo_Active_Project_links table. Thanks!";
            }
        }
    }
}