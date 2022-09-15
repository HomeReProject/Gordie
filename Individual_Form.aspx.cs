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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Individual.Visible = false;
        }

        protected void btn_Individual_Submit_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_into_Demo_RT_Individuals", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Updated", txtUpdatedDate.Text);
                cmd.Parameters.AddWithValue("@Org_ID", txtOrgID.Text);
                cmd.Parameters.AddWithValue("@Individual_FullName", txtFullName.Text);
                cmd.Parameters.AddWithValue("@ServiceRegion", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Worker_Type", ddl_WorkerType.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Resource_Type", ddl_ResourceType.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Trade_Role", ddl_TradeRole.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Hourly_Rate", txtHourlyRate.Text);
                cmd.Parameters.AddWithValue("@Membership_Status", ddl_MemberStatus.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Individual_HRP_Start_Date", txtStartdate.Text);
                cmd.Parameters.AddWithValue("@Non_Project_Demand_percent", txt_nonPrj.Text);
                cmd.Parameters.AddWithValue("@Project_Capacity_percent", txt_PrjCapacity.Text);
                cmd.Parameters.AddWithValue("@Stnd_Full_Capacity_Hours", txt_FullCapacityHours.Text);
                cmd.Parameters.AddWithValue("@Work_Permit_Documentation", ddl_WorkPermit.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@W9_W4_Record", ddl_WorkRecords.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@CertificationLicense", ddl_License.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Background_Check", ddl_BCheck.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@HRP_System_Access", ddl_HRPSystemAccess.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@PhoneApp_Version", ddl_AppVersion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@ShareFile_AccessLevel", ddl_ShareFileAccessLevel.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Resource_Pool_Acess", ddl_ResourcePoolAccess.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Network_Development_Access", ddl_NetworkDevAccess.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@File_PIN", txtPIN.Text);
                cmd.Parameters.AddWithValue("@Initial_Billing_Option", ddl_BillingOption.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@HRP_Membership_Fee", txtFee.Text);
                cmd.Parameters.AddWithValue("@Last_Invoice_Date", txtInvoiceDate.Text);
                cmd.Parameters.AddWithValue("@Payment_Due_date", txtDueDate.Text);
                cmd.Parameters.AddWithValue("@Current_Payment_Status", ddl_PayStatus.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Paid_Through_Date", txtPaidThrough.Text);
                cmd.Parameters.AddWithValue("@Next_Invoice_Date", txtNextInvoice.Text);
                cmd.Parameters.AddWithValue("@Pays_Through_Date", txtPaysThrough.Text);

                SqlParameter outputParameter = new SqlParameter
                {
                    ParameterName = "@Individual_ID",
                    SqlDbType = System.Data.SqlDbType.Int,
                    Direction = System.Data.ParameterDirection.Output

                };
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                String IndividualID = outputParameter.Value.ToString();

                lbl_Individual.Visible = true;
                lbl_Individual.Text = "Record of the Individual of Individual_ID = " + IndividualID + " Got inserted into the <b>Demo_RT_New_Individuals</b> table sucessfully!";


                txtUpdatedDate.Text = "";
                txtOrgID.Text = "";
                txtFullName.Text = "";
                ddl_ServiceRegion.SelectedItem.Text = "";
                ddl_WorkerType.SelectedItem.Text = "";
                ddl_ResourceType.SelectedItem.Text = "";
                ddl_TradeRole.SelectedItem.Text = "";
                txtHourlyRate.Text = "";
                ddl_MemberStatus.SelectedItem.Text = "";
                txtStartdate.Text = "";
                txt_nonPrj.Text = "";
                txt_PrjCapacity.Text = "";
                txt_FullCapacityHours.Text = "";
                ddl_WorkPermit.SelectedItem.Text = "";
                ddl_WorkRecords.SelectedItem.Text = "";
                ddl_License.SelectedItem.Text = "";
                ddl_BCheck.SelectedItem.Text = "";
                ddl_HRPSystemAccess.SelectedItem.Text = "";
                ddl_AppVersion.SelectedItem.Text = "";
                ddl_ShareFileAccessLevel.SelectedItem.Text = "";
                ddl_ResourcePoolAccess.SelectedItem.Text = "";
                ddl_NetworkDevAccess.SelectedItem.Text = "";
                txtPIN.Text = "";
                ddl_BillingOption.SelectedItem.Text = "";
                txtFee.Text = "";
                txtInvoiceDate.Text = "";
                txtDueDate.Text = "";
                ddl_PayStatus.SelectedItem.Text = "";
                txtPaidThrough.Text = "";
                txtNextInvoice.Text = "";
                txtPaysThrough.Text = "";


            }
        }
    }
}