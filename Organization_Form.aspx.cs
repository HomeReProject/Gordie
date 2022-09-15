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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                lbl_View1.Visible = false;

            }
        }

        protected void Submit_View1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spAddRow_INTO_1Demo_NT_Organization", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Org_Name", txtOrgName.Text);
                cmd.Parameters.AddWithValue("@Org_Type", ddl_OrgType.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Service_Region", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Market_Category", ddl_MarketCategory.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Join_Date", txtJoinDate.Text);
                cmd.Parameters.AddWithValue("@Member_Status", ddl_MemberStatus.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Functional_Group", ddl_FunctionalGrp.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Website_url", txtWebsite.Text);
                cmd.Parameters.AddWithValue("@Social_Address", txtSocial.Text);
                cmd.Parameters.AddWithValue("@Federal_EIN", txtFederal.Text);
                cmd.Parameters.AddWithValue("@State_ID", txtTaxID.Text);
                cmd.Parameters.AddWithValue("@State_License", txtLicense.Text);
                cmd.Parameters.AddWithValue("@Billing_Address", Org_Address.Text);
                cmd.Parameters.AddWithValue("@HQ_ZQ", ddl_HQZQ.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Updated_on", txtToday.Text);
                cmd.Parameters.AddWithValue("@TLA", txt_TLA.Text);
                cmd.Parameters.AddWithValue("@Network_owner", ddl_Network_Owner.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Network_Type", ddl_Network_Type.SelectedItem.Text);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@Org_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();

                lbl_View1.Visible = true;
                lbl_View1.Text = "Organization with ID = " + ID + " got inserted in Demo_NT_Organization table. Thanks!";

                View2_OrgID.Text = ID;

                txtToday.Text = "";
                txtOrgName.Text = "";
                ddl_OrgType.SelectedItem.Text = "";
                ddl_MarketCategory.SelectedItem.Text = "";
                txtJoinDate.Text = "";
                ddl_MemberStatus.SelectedItem.Text = "";
                ddl_FunctionalGrp.SelectedItem.Text = "";
                txtWebsite.Text = "";
                txtSocial.Text = "";
                txtFederal.Text = "";
                txtTaxID.Text = "";
                txtLicense.Text = "";
                Org_Address.Text = "";
                ddl_HQZQ.SelectedItem.Text = "";
                txtToday.Text = "";
                txt_TLA.Text = "";
                ddl_Network_Owner.SelectedItem.Text = "";
                ddl_Network_Type.SelectedItem.Text = "";
            }
        }

        protected void Next_View2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            lbl_View2.Visible = false;
        }

        protected void Back_View1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Submit_View2_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_INTO_2Demo_NT_Organization_TradeRoles", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Org_ID", View2_OrgID.Text);
                cmd.Parameters.AddWithValue("@TradeRole1", ddl_TD1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@TradeRole2", ddl_TD2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@TradeRole3", ddl_TD3.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@TradeRole4", ddl_TD4.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@TradeRole5", ddl_TD5.SelectedItem.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                lbl_View2.Visible = true;
                lbl_View2.Text = "Organization with ID = " + View2_OrgID.Text + " got updated, in Demo_sub_Org_TradeRoles table. Thanks!";


               
                ddl_TD1.SelectedItem.Text = "";
                ddl_TD2.SelectedItem.Text = "";
                ddl_TD3.SelectedItem.Text = "";
                ddl_TD4.SelectedItem.Text = "";
                ddl_TD5.SelectedItem.Text = "";

            }
        }

        protected void Next_View3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            lbl_View3.Visible = false;
            View3_OrgID.Text = View2_OrgID.Text;
        }

        protected void Back_View2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Submit_View3_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_INTO_3Demo_NT_Organization_Contacts", con); 
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Org_ID", View3_OrgID.Text);
                cmd.Parameters.AddWithValue("@Leader_FullName", LeaderFullName.Text);
                cmd.Parameters.AddWithValue("@Leader_Email", LeaderEmail.Text);
                cmd.Parameters.AddWithValue("@Leader_Phone", LeaderPhone.Text);
                cmd.Parameters.AddWithValue("@KC1_FullName", Key1FullName.Text);
                cmd.Parameters.AddWithValue("@KC1_Email", Key1Email.Text);
                cmd.Parameters.AddWithValue("@KC1_Phone", Key1Phone.Text);
                cmd.Parameters.AddWithValue("@KC1_PhCarrier", ddl_Key1PhoneCarrier.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@KC1_SMS_Code", Key1SMSCode.Text);
                cmd.Parameters.AddWithValue("@KC2_FullName", Key2FullName.Text);
                cmd.Parameters.AddWithValue("@KC2_Email", Key2Email.Text);
                cmd.Parameters.AddWithValue("@KC2_Phone", Key2Phone.Text);
                cmd.Parameters.AddWithValue("@KC2_PhCarrier", ddl_Key2PhoneCarrier.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@KC2_SMS_Code", Key2SMSCode.Text);
                cmd.Parameters.AddWithValue("@PM1_FullName", PM1FullName.Text);
                cmd.Parameters.AddWithValue("@PM1_Email", PM1Email.Text);
                cmd.Parameters.AddWithValue("@PM1_Phone", PM1Phone.Text);
                cmd.Parameters.AddWithValue("@PM1_PhCarrier", ddl_PM1PhoneCarrier.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@PM1_SMS_Code", PM1SMSCode.Text);
                cmd.Parameters.AddWithValue("@PM2_FullName", PM2FullName.Text);
                cmd.Parameters.AddWithValue("@PM2_Email", PM2Email.Text);
                cmd.Parameters.AddWithValue("@PM2_Phone", PM2Phone.Text);
                cmd.Parameters.AddWithValue("@PM2_PhCarrier", ddl_PM2PhoneCarrier.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@PM2_SMS_Code", PM2SMSCode.Text);
                cmd.Parameters.AddWithValue("@AC_FullName", ACFullName.Text);
                cmd.Parameters.AddWithValue("@AC_Email", ACEmail.Text);
                cmd.Parameters.AddWithValue("@AC_Phone", ACPhone.Text);
                cmd.Parameters.AddWithValue("@AC_PhCarrier", ddl_ACPhoneCarrier.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@AC_SMS_Code", ACSMSCode.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                lbl_View3.Visible = true;
                lbl_View3.Text = "Organization with ID = " + View3_OrgID.Text + " got updated in Demo_sub_Org_Contacts table. Thanks!";

               
                LeaderFullName.Text = "";
                LeaderEmail.Text = "";
                LeaderPhone.Text = "";
                Key1FullName.Text = "";
                Key1Email.Text = "";
                Key1Phone.Text = "";
                ddl_Key1PhoneCarrier.SelectedItem.Text = "";
                Key1SMSCode.Text = "";
                Key2FullName.Text = "";
                Key2Email.Text = "";
                Key2Phone.Text = "";
                ddl_Key2PhoneCarrier.SelectedItem.Text = "";
                Key2SMSCode.Text = "";
                PM1FullName.Text = "";
                PM1Email.Text = "";
                PM1Phone.Text = "";
                ddl_PM1PhoneCarrier.SelectedItem.Text = "";
                PM1SMSCode.Text = "";
                PM2FullName.Text = "";
                PM2Email.Text = "";
                PM2Phone.Text = "";
                ddl_PM2PhoneCarrier.SelectedItem.Text = "";
                PM2SMSCode.Text = "";
                ACFullName.Text = "";
                ACEmail.Text = "";
                ACPhone.Text = "";
                ddl_ACPhoneCarrier.SelectedItem.Text = "";
                ACSMSCode.Text = "";
            }
        }

        protected void Next_View4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            lbl_View4.Visible = false;
            View4_OrgID.Text = View3_OrgID.Text;
        }

        protected void Back_view3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Submit_View4_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_INTO_4Demo_NT_Organization_Scores", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Org_ID", View4_OrgID.Text);
                cmd.Parameters.AddWithValue("@updated", txtUpdated.Text);
                cmd.Parameters.AddWithValue("@TrustLevel", ddl_Trust.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@QualityLevel", ddl_Quality.SelectedValue);
                cmd.Parameters.AddWithValue("@ValueLevel", ddl_Value.SelectedValue);
                cmd.Parameters.AddWithValue("@TimelinessLevel", ddl_Timeliness.SelectedValue);
                cmd.Parameters.AddWithValue("@ProblemSolvingSkill", ddl_ProblemSolving.SelectedValue);

                con.Open();
                cmd.ExecuteNonQuery();
                lbl_View4.Visible = true;
                lbl_View4.Text = "Organization with ID = " + View4_OrgID.Text + " got updated in Demo_sub_Org_Scores table. Thanks!";

               
                txtUpdated.Text = "";
                ddl_Trust.SelectedItem.Value = "";
                ddl_Quality.SelectedValue = "";
                ddl_Value.SelectedValue = "";
                ddl_Timeliness.SelectedValue = "";
                ddl_ProblemSolving.SelectedValue = "";

            }
        }

        protected void Next_View5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
            lbl_View5.Visible = false;
            View5_OrgID.Text = View4_OrgID.Text;
            ddl_SR.SelectedItem.Text = ddl_ServiceRegion.SelectedItem.Text;
        }

        protected void Back_view4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void Submit_View5_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spAddRow_INTO_5Demo_NT_Organization_IN_Networks", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Org_ID", View5_OrgID.Text);
                cmd.Parameters.AddWithValue("@Service_Region", ddl_SR.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Network_1", txtNetwork1.Text);
                cmd.Parameters.AddWithValue("@Network_2", txtNetwork2.Text);
                cmd.Parameters.AddWithValue("@Network_3", txtNetwork3.Text);
                cmd.Parameters.AddWithValue("@Network_4", txtNetwork4.Text);
                cmd.Parameters.AddWithValue("@Network_5", txtNetwork5.Text);
                cmd.Parameters.AddWithValue("@Network_6", txtNetwork6.Text);
                cmd.Parameters.AddWithValue("@Network_7", txtNetwork7.Text);
                cmd.Parameters.AddWithValue("@Network_8", txtNetwork8.Text);
                cmd.Parameters.AddWithValue("@Network_9", txtNetwork9.Text);
                cmd.Parameters.AddWithValue("@Network_10", txtNetwork10.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                lbl_View5.Visible = true;
                lbl_View5.Text = "Organization with ID = " + View5_OrgID.Text + " got updated in Demo_sub_NT_Orgs_IN_Networks table. Thanks!";


                ddl_SR.SelectedItem.Text = "";
                txtNetwork1.Text = "";
                txtNetwork2.Text = "";
                txtNetwork3.Text = "";
                txtNetwork4.Text = "";
                txtNetwork5.Text = "";
                txtNetwork6.Text = "";
                txtNetwork7.Text = "";
                txtNetwork8.Text = "";
                txtNetwork9.Text = "";
                txtNetwork10.Text = "";



            }
        }

        protected void Next_View6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
            lbl_View6.Visible = false;
            View6_OrgID.Text = View5_OrgID.Text;
        }

        protected void Back_View5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
        }

        protected void Submit_view6_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_INTO_6Demo_NT_Organization_SharefileLinks", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Org_ID", View6_OrgID.Text);
                cmd.Parameters.AddWithValue("@Owner_Base_Folder", txt_Owner.Text);
                cmd.Parameters.AddWithValue("@New_Prj_Opp_Folder", txt_NewPrj.Text);
                cmd.Parameters.AddWithValue("@Quote_Packages_Folder", txt_Quote.Text);
                cmd.Parameters.AddWithValue("@Active_Projects_Folder", txt_Active.Text);
                cmd.Parameters.AddWithValue("@Member_Base_Folder", txt_Member.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                lbl_View6.Visible = true;
                lbl_View6.Text = "Organization with ID = " + View6_OrgID.Text + " got updated in Demo_sub_Org_Sharefile_Links table. Thanks!";


                txt_Owner.Text = "";
                txt_NewPrj.Text = "";
                txt_Quote.Text = "";
                txt_Active.Text = "";
                txt_Member.Text = "";
            }
        }

        protected void Next_View7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 6;
            txt_autofill.Text = ddl_OrgType.SelectedItem.Text;
            lbl_View7.Visible = false;
            View7_OrgID.Text = View6_OrgID.Text;
        }

        protected void Back_View6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
        }

        protected void Submit_View7_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDRow_INTO_7Demo_NT_Organization_MembershipBilling", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Org_ID", View7_OrgID.Text);
                cmd.Parameters.AddWithValue("@Updated", txt_updated.Text);
                cmd.Parameters.AddWithValue("@Membership_Renewal_Frequency", ddl_RenewableFreq.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Org_Type", txt_autofill.Text);
                cmd.Parameters.AddWithValue("@Base_membership_Fees", Convert.ToDecimal(txt_BaseFee.Text));
                cmd.Parameters.AddWithValue("@Initial_Billing_Option", ddl_InitialOption.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Payment_Net_Terms", txt_NetTerms.Text);
                cmd.Parameters.AddWithValue("@Last_Invoice_Date", txt_LastInvoiceDate.Text);
                cmd.Parameters.AddWithValue("@Payment_Due_Date", txt_PayDate.Text);
                cmd.Parameters.AddWithValue("@Pays_through_Date", txt_PayThrough.Text);
                cmd.Parameters.AddWithValue("@Payment_Status", ddl_PayStatus.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Next_Invoice_Date", txt_NextInvoiceDate.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                lbl_View7.Visible = true;
                lbl_View7.Text = "Organization with ID = " + View7_OrgID.Text + " got updated in Demo_sub_Org_Membership_Billing table. Thanks!";

                txt_updated.Text = "";
                ddl_RenewableFreq.SelectedItem.Text = "";
                txt_autofill.Text = "";
                txt_BaseFee.Text = "";
                ddl_InitialOption.SelectedItem.Text = "";
                txt_NetTerms.Text = "";
                txt_LastInvoiceDate.Text = "";
                txt_PayDate.Text = "";
                txt_PayThrough.Text = "";
                ddl_PayStatus.SelectedItem.Text = "";
                txt_NextInvoiceDate.Text = "";
            }
        }

        protected void Back_Home_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}