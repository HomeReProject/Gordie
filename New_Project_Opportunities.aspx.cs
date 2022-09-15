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
    public partial class New_Project_Opportunities1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_NPO.Visible = false;
        }

        protected void btn_Org_Click(object sender, EventArgs e)
        {
            if (ddl_ServiceRegion.SelectedItem.Value == "-1")
            {
                lbl_NPO.Visible = true;
                lbl_NPO.Text = "Please Select a Service Region";

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

        protected void btn_NPO_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_Into_Demo_New_Project_Opportunities", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Today_Date", txt_Today.Text);
                cmd.Parameters.AddWithValue("@Service_Region", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Org_Name", ddl_Org_list.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Project_ID", txt_prj_ID.Text);
                cmd.Parameters.AddWithValue("@Prj_Opp_Folder_Link", txt_PrjOpp.Text);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@NPO_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                lbl_NPO.Visible = true;
                lbl_NPO.Text = "New Project Opportunity with ID = " + ID + " got inserted in Demo_New_Project_Opportunities table. Thanks!";
            }
        }
    }
}