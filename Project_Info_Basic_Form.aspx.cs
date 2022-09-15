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
    public partial class Project_Info_Basic_Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Prj.Visible = false;
        }

        protected void Project_Basic_Info_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_into_Demo_PT_Project_Basic_Info", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Project_Edited_Date", txt_Today.Text);
                cmd.Parameters.AddWithValue("@Project_Name", txt_Prj_Name.Text);
                cmd.Parameters.AddWithValue("@Customer_ID", txt_Cust_ID.Text);
                cmd.Parameters.AddWithValue("@Service_Region", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Project_Type", ddl_Project_Type.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Project_Status", ddl_Project_Status.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Project_AddressLine1", txt_Prj_Address1.Text);
                cmd.Parameters.AddWithValue("@Project_AddressLine2", txt_Prj_Address2.Text);
                cmd.Parameters.AddWithValue("@Project_City", txt_Prj_City.Text);
                cmd.Parameters.AddWithValue("@Prj_State", txt_Prj_State.Text);
                cmd.Parameters.AddWithValue("@Project_Zip", txt_Prj_ZIP.Text);
                cmd.Parameters.AddWithValue("@Project_ZQ_Location", ddl_ZQ_Locations.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Desired_Start_Date", txt_Desired_Start_Date.Text);
                cmd.Parameters.AddWithValue("@Desired_Finish_Date", txt_Desired_Finished_Date.Text);
                cmd.Parameters.AddWithValue("@Desired_Site_Visit_Date", txt_Desired_Visit_Date.Text);
                cmd.Parameters.AddWithValue("@Desired_Plan_Quote_Date", txt_Desired_Quote_Date.Text);
                cmd.Parameters.AddWithValue("@Project_Description", lb_Project_Description.Text);
                cmd.Parameters.AddWithValue("@Project_Goals", lb_Project_Goals.Text);
                cmd.Parameters.AddWithValue("@Project_Concerns", lb_Project_Concerns.Text);
                cmd.Parameters.AddWithValue("@Occupancy_Status", ddl_Occupancy_Status.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Rooms_Furnished_Status", ddl_Furnished.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Space_Preparation_Help_Needed", ddl_Space_Preparation.SelectedItem.Text);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@Project_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                lbl_Prj.Visible = true;
                lbl_Prj.Text = "Project Info with ID = " + ID + " got inserted in Demo_PT_Project_Basic_Info table. Thanks!";

                txt_Today.Text = "";
                txt_Prj_Name.Text = "";
                txt_Cust_ID.Text = "";
                ddl_ServiceRegion.SelectedItem.Text = "";
                ddl_Project_Type.SelectedItem.Text = "";
                ddl_Project_Status.SelectedItem.Text = "";
                txt_Prj_Address1.Text = "";
                txt_Prj_Address2.Text = "";
                txt_Prj_City.Text = "";
                txt_Prj_State.Text = "";
                txt_Prj_ZIP.Text = "";
                ddl_ZQ_Locations.SelectedItem.Text = "";
                txt_Desired_Start_Date.Text = "";
                txt_Desired_Finished_Date.Text = "";
                txt_Desired_Visit_Date.Text = "";
                txt_Desired_Quote_Date.Text = "";
                lb_Project_Description.Text = "";
                lb_Project_Goals.Text = "";
                lb_Project_Concerns.Text = "";
                ddl_Occupancy_Status.SelectedItem.Text = "";
                ddl_Furnished.SelectedItem.Text = "";
                ddl_Space_Preparation.SelectedItem.Text = "";
            }
        }
    }
}