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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Customer.Visible =false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_Into_Demo_PT_CustomerProfile", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Profile_Received_Date", ProfileReceivedDate.Text);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", LastName.Text);
                cmd.Parameters.AddWithValue("@ServiceRegion", ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Customer_Type", CustomerType.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Email", EmailAddress.Text);
                cmd.Parameters.AddWithValue("@Phone", PhoneNumber.Text);
                cmd.Parameters.AddWithValue("@PhoneCarrier", ddl_CustPhoneCarrier.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@SMSCode", SMSCode.Text);
                cmd.Parameters.AddWithValue("@AddressLine1", Address1.Text);
                cmd.Parameters.AddWithValue("@AddressLine2", Address2.Text);
                cmd.Parameters.AddWithValue("@City", City.Text);
                cmd.Parameters.AddWithValue("@State", State.Text);
                cmd.Parameters.AddWithValue("@Zip", Zip.Text);
                cmd.Parameters.AddWithValue("@HRPConnection", HRP.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@ShareFile_Access_Level", ShareFileAccessLevel.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@File_Access_PIN", PIN.Text);


                SqlParameter outputParameter = new SqlParameter
                {
                    ParameterName = "@Customer_ID",
                    SqlDbType = System.Data.SqlDbType.Int,
                    Direction = System.Data.ParameterDirection.Output

                };
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                String CustID = outputParameter.Value.ToString();
                lbl_Customer.Visible = true;
                lbl_Customer.Text = "Record of the Customer of Customer_ID = " + CustID + " Got inserted into the Demo_PT_CustomerProfile table sucessfully!";

                ProfileReceivedDate.Text = "";
                FirstName.Text = "";
                LastName.Text = "";
                ServiceRegion.SelectedItem.Text = "";
                CustomerType.SelectedItem.Text = "";
                EmailAddress.Text = "";
                PhoneNumber.Text = "";
                ddl_CustPhoneCarrier.SelectedItem.Text = "";
                SMSCode.Text = "";
                Address1.Text = "";
                Address2.Text = "";
                City.Text = "";
                State.Text = "";
                Zip.Text = "";
                HRP.SelectedItem.Text = "";
                ShareFileAccessLevel.SelectedItem.Text = "";
                PIN.Text = "";

            }
        }
    }
}