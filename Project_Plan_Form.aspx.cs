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
    public partial class Project_Plan_Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_ppf.Visible = false;
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_into_Demo_PT_Project_Planning", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Project_Plan_ID", txt_Prj_Plan_ID.Text);
                cmd.Parameters.AddWithValue("@Plan_Submitted_Date", txt_Date.Text);
                cmd.Parameters.AddWithValue("@Org_ID", txt_OrgID.Text);
                cmd.Parameters.AddWithValue("@Project_ID", txt_PrjID.Text); 
                cmd.Parameters.AddWithValue("@Service_Region", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Project_Status", ddl_Project_Status.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Customer_LastName", txt_Cust_Lastname.Text);
                cmd.Parameters.AddWithValue("@Project_Proposal_Status", ddl_pps.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Desired_Start_Date", txt_Desired_Start_Date.Text);
                cmd.Parameters.AddWithValue("@Desired_Finish_Date", txt_Desired_Finish_Date.Text);
                cmd.Parameters.AddWithValue("@Desired_Duration_Weeks", txt_Desired_Duration_Weeks.Text);
                cmd.Parameters.AddWithValue("@Predicted_Start_Date", txt_Predicted_Start_Date.Text);
                cmd.Parameters.AddWithValue("@Predicted_Finish_Date", txt_Predicted_Finish_Date.Text);
                cmd.Parameters.AddWithValue("@Predicted_Duration_Weeks", txt_Predicted_Duration_Weeks.Text);
                cmd.Parameters.AddWithValue("@Baseline_Start_Date", txt_Baseline_Start_Date.Text);
                cmd.Parameters.AddWithValue("@Baseline_Finish_Date", txt_Baseline_Finish_Date.Text);
                cmd.Parameters.AddWithValue("@Baseline_Duration_Weeks", txt_Baseline_Duration_Weeks.Text);
                cmd.Parameters.AddWithValue("@Total_Labor_Cost_Estimate", txt_Total_Labor_Cost_Estimate.Text);
                cmd.Parameters.AddWithValue("@Total_Materials_Cost_Estimate", txt_Total_Materials_Cost_Estimate.Text);
                cmd.Parameters.AddWithValue("@Total_Miscellaneous_Cost_Estimate", txt_Miscellaneous.Text);
                cmd.Parameters.AddWithValue("@Total_Project_Cost_Estimate", txt_Prj_Cost.Text);
                cmd.Parameters.AddWithValue("@PIF_Link", txt_PIF_Link.Text);
                cmd.Parameters.AddWithValue("@Project_Folder", txt_Project_Folder.Text);
                cmd.Parameters.AddWithValue("@Quote_Package_Folder", txt_Quote_Package_Folder.Text);
                cmd.Parameters.AddWithValue("@Customer_Team_Area_Folder", txt_Cust_Team_Area.Text);
                cmd.Parameters.AddWithValue("@PRELIM_Project_Scope_Specifications_PDF", txt_PRELIM_PDF.Text);
                cmd.Parameters.AddWithValue("@FINAL_Project_Scope_Specification_PDF", txt_FINAL_PDF.Text);
                cmd.Parameters.AddWithValue("@Project_Plan_Proposal_PDF", txt_Prj_Plan_PDF.Text);
                cmd.Parameters.AddWithValue("@Baseline_Project_Plan_Quote", txt_BL_Quote.Text);
                cmd.Parameters.AddWithValue("@Baseline_Project_Plan_Overview_PDF", txt_BL_Overview.Text);

                con.Open();
                cmd.ExecuteNonQuery();
               
                lbl_ppf.Visible = true;
                lbl_ppf.Text = "Project Plan with ID = " + txt_Prj_Plan_ID.Text + " got inserted in Demo_PT_Project_Planning table. Thanks! The next steps are to be follwed in PIF.";
            }
        }
    }
}