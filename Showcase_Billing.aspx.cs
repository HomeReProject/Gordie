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
    public partial class Showcase_Billing_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_SB.Visible = false;
        }       

        protected void btn_Org_Click(object sender, EventArgs e)
        {
            if (ddl_ServiceRegion.SelectedItem.Value == "-1")
            {
                lbl_SB.Visible = true;
                lbl_SB.Text = "Please Select a Service Region";

            }
            else
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd2 = new SqlCommand("select Org_ID, Org_Name from Demo_NT_Organization where Service_region ='" + ddl_ServiceRegion.SelectedItem.Text + "'", con);
                    con.Open();

                    ddl_Org_list.DataSource = cmd2.ExecuteReader();
                    ddl_Org_list.DataTextField = "Org_Name";
                    ddl_Org_list.DataValueField = "Org_ID";
                    ddl_Org_list.DataBind();
                }
            }
        }

        protected void btnShowcaseBilling_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("ADDRow_into_Demo_RT_Showcase_Billing", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Today", txt_Today.Text);
                cmd.Parameters.AddWithValue("@Service_Region", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Org_ID", ddl_Org_list.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@First_InvoiceDate", txt_LaunchDate.Text);
                cmd.Parameters.AddWithValue("@Showcase_Duration", txt_Duration.Text);
                cmd.Parameters.AddWithValue("@Setup_fee", ddl_SetupFee.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Billing_Frequency", ddl_Billing_Freq.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Next_Invoice_Date", txt_InvoiveDate.Text);
                cmd.Parameters.AddWithValue("@Pays_through_date", txt_PayThru.Text);
                cmd.Parameters.AddWithValue("@content_FolderLink", txt_FolderLink.Text);
                cmd.Parameters.AddWithValue("@Page_URL", txt_PageUrl.Text);
                cmd.Parameters.AddWithValue("@Network_Owner_Type", ddl_NetworkOwner.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Market_Type", ddl_MarketType.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Project_Size", ddl_ProjectSize.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Interior_Type", ddl_Interior.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Exterior_Type", ddl_Exterior.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@General_Contractor", CheckBox8.Checked);
                cmd.Parameters.AddWithValue("@Architect_Engineer", CheckBox9.Checked);
                cmd.Parameters.AddWithValue("@Carpentry", CheckBox10.Checked);
                cmd.Parameters.AddWithValue("@Electrical", CheckBox11.Checked);
                cmd.Parameters.AddWithValue("@Energy", CheckBox12.Checked);
                cmd.Parameters.AddWithValue("@Excavation_Septic", CheckBox13.Checked);
                cmd.Parameters.AddWithValue("@Flooring",CheckBox14.Checked);
                cmd.Parameters.AddWithValue("@HVAC", CheckBox15.Checked);
                cmd.Parameters.AddWithValue("@Information_Technology", CheckBox16.Checked);
                cmd.Parameters.AddWithValue("@Landscaping", CheckBox17.Checked);
                cmd.Parameters.AddWithValue("@Masonry", CheckBox18.Checked);
                cmd.Parameters.AddWithValue("@Painting", CheckBox19.Checked);
                cmd.Parameters.AddWithValue("@Paving", CheckBox20.Checked);
                cmd.Parameters.AddWithValue("@plumbing", CheckBox21.Checked);
                cmd.Parameters.AddWithValue("@Roofing_Siding", CheckBox22.Checked);
                cmd.Parameters.AddWithValue("@Sheet_Rock", CheckBox23.Checked);
                cmd.Parameters.AddWithValue("@Stone_Countertops", CheckBox24.Checked);
                cmd.Parameters.AddWithValue("@Tiling", CheckBox25.Checked);
                cmd.Parameters.AddWithValue("@Windows_Doors", CheckBox26.Checked);
                cmd.Parameters.AddWithValue("@Other", CheckBox27.Checked);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@SB_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                lbl_SB.Visible = true;
                lbl_SB.Text = "New row with ID = " + ID + " got inserted in Demo_RT_Showcase_Billing table. Thanks!";
            }
        }
    }
}