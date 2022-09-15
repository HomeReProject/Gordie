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
    public partial class Work_Resources_Links1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_wrl.Visible = false;
        }

        protected void btn_Org_Click(object sender, EventArgs e)
        {
            if (ddl_ServiceRegion.SelectedItem.Value == "-1")
            {
                Response.Write("Please Select a Service Region");

            }
            else
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd2 = new SqlCommand("select Org_Name from Demo_NT_Organization where Service_region ='" + ddl_ServiceRegion.SelectedItem.Text + "'", con);
                    con.Open();

                    ddl_Org_list.DataSource = cmd2.ExecuteReader();
                    ddl_Org_list.DataTextField = "Org_Name";
                    ddl_Org_list.DataBind();
                }
            }
        }

        protected void btn_wrl_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("ADDRow_into_Demo_Work_Resources_Links", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Service_Region", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Org_Name", ddl_Org_list.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Resouce_Capacity_Form", txt_Resource_Cap_Form.Text);
                cmd.Parameters.AddWithValue("@Network_Development_Form", txt_Net_Dev_Form.Text);
                cmd.Parameters.AddWithValue("@Weekly_Portfolio_Folder", txt_Weekly_Portfolio.Text);
                cmd.Parameters.AddWithValue("@Member_Folder", txt_Member.Text);
                cmd.Parameters.AddWithValue("@Full_PPM_Weekly_HRP_Report", txt_Fp_Report.Text);
                cmd.Parameters.AddWithValue("@FULL_PPM_Network_Weekly_WP_Guide", txt_Fp_Guide.Text);
                cmd.Parameters.AddWithValue("@My_Weekly_WP_Guide", txt_WP_Guide.Text);
                cmd.Parameters.AddWithValue("@Retail_Network_Owner_Weekly_Portfolio_Dashboard", txt_Retail.Text);
                cmd.Parameters.AddWithValue("@Monthly_Network_Heat_map", txt_Monthly.Text);
                cmd.Parameters.AddWithValue("@Portfolio_Alignment_Report", txt_Alignment.Text);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@WRL_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                lbl_wrl.Visible = true;
                lbl_wrl.Text = "Work & Resource Links with ID = " + ID + " got inserted in Demo_Work_Resources_Links table. Thanks!";
            }
        }
    }
}