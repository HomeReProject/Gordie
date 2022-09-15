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
    public partial class TrainingLinks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_TL.Visible = false;
        }

        protected void TL_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spADDROW_Into_Demo_Training_Links", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Service_Region", ddl_ServiceRegion.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@All_Users_System_Training_Folder", txtLink1.Text);
                cmd.Parameters.AddWithValue("@Customer_Training_Folder", txtLink2.Text);
                cmd.Parameters.AddWithValue("@NM_Training_Folder", txtLink3.Text);
                cmd.Parameters.AddWithValue("@Retail_NO_Training_Folder", txtLink4.Text);
                cmd.Parameters.AddWithValue("@FullPPM_NO_Training_Folder", txtLink5.Text);
                cmd.Parameters.AddWithValue("@HRP_Prj_Planning_Process_Quote_Overview_VIDEO", txtLink6.Text);
                cmd.Parameters.AddWithValue("@HRP_Prj_Planning_Process_Quote_Overview_PDF", txtLink7.Text);
                cmd.Parameters.AddWithValue("@HRP_Service_Region_Map_PDF", txtLink8.Text);
                cmd.Parameters.AddWithValue("@Cust_Training_Overview_VIDEO", txtLink9.Text);
                cmd.Parameters.AddWithValue("@Cust_Training_Overview_PDF", txtLink10.Text);
                cmd.Parameters.AddWithValue("@Cust_Detailed_HRP_System_Overview_VIDEO", txtLink11.Text);
                cmd.Parameters.AddWithValue("@Cust_Detailed_HRP_System_Overview_PDF", txtLink12.Text);
                cmd.Parameters.AddWithValue("@HRP_Cust_Phone_App_User_Guide_VIDEO", txtLink13.Text);
                cmd.Parameters.AddWithValue("@HRP_Cust_Phone_App_User_Guide_PDF", txtLink14.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_VIDEO_Guide_for_Customers", txtLink15.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_PDF_Guide_for_Customers", txtLink16.Text);
                cmd.Parameters.AddWithValue("@NM_Training_Overview_VIDEO", txtLink17.Text);
                cmd.Parameters.AddWithValue("@NM_Training_Overview_PDF", txtLink18.Text);
                cmd.Parameters.AddWithValue("@HRP_Phone_App_VIDEO_User_Guide_for_NM", txtLink19.Text);
                cmd.Parameters.AddWithValue("@HRP_Phone_App_PDF_User_Guide_for_NM", txtLink20.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_VIDEO_User_Guide_for_NM", txtLink21.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_PDF_User_Guide_for_NM", txtLink22.Text);
                cmd.Parameters.AddWithValue("@HRP_Invoicing_VIDEO_Guide_for_Org", txtLink23.Text);
                cmd.Parameters.AddWithValue("@HRP_Invoicing_PDF_Guide_for_Org", txtLink24.Text);
                cmd.Parameters.AddWithValue("@Simple_Resource_Management_VIDEO_Guide_for_Org", txtLink25.Text);
                cmd.Parameters.AddWithValue("@Simple_Resource_Management_PDF_Guide_for_Org", txtLink26.Text);
                cmd.Parameters.AddWithValue("@HRP_Prj_Planning_Guide_VIDEO_for_NM", txtLink27.Text);
                cmd.Parameters.AddWithValue("@HRP_Prj_Planning_Guide_PDF_for_NM", txtLink28.Text);
                cmd.Parameters.AddWithValue("@HRP_System_Summary_Overview_VIDEO_4_Retail_NO", txtLink29.Text);
                cmd.Parameters.AddWithValue("@HRP_System_Summary_Overview_PDF_4_Retail_NO", txtLink30.Text);
                cmd.Parameters.AddWithValue("@HRP_Phone_app_User_Guid_VIDEO_4_Retail_NO", txtLink31.Text);
                cmd.Parameters.AddWithValue("@HRP_Phone_app_User_Guid_PDF_4_Retail_NO", txtLink32.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_Guide_VIDEO_4_Retail_NO", txtLink33.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_Guide_PDF_4_Retail_NO", txtLink34.Text);
                cmd.Parameters.AddWithValue("@HRP_Network_Devpmt_Guide_VIDEO_4_Retail_NO", txtLink35.Text);
                cmd.Parameters.AddWithValue("@HRP_Network_Devpmt_Guide_PDF_4_Retail_NO", txtLink36.Text);
                cmd.Parameters.AddWithValue("@Prj_mgmnt_Guide_VIDEO_4_Retail_NO", txtLink37.Text);
                cmd.Parameters.AddWithValue("@Prj_mgmnt_Guide_PDF_4_Retail_NO", txtLink38.Text);
                cmd.Parameters.AddWithValue("@PPM_Guide_VIDEO_4_Retail_NO", txtLink39.Text);
                cmd.Parameters.AddWithValue("@PPM_Guide_PDF_4_Retail_NO", txtLink40.Text);
                cmd.Parameters.AddWithValue("@HRP_Invoicing_Sys_Guide_VIDEO_4_Retail_NO", txtLink41.Text);
                cmd.Parameters.AddWithValue("@HRP_Invoicing_Sys_Guide_PDF_4_Retail_NO", txtLink42.Text);
                cmd.Parameters.AddWithValue("@HRP_Sys_Summary_Overview_VIDEO_4_Full_PPM_NO", txtLink43.Text);
                cmd.Parameters.AddWithValue("@HRP_Sys_Summary_Overview_PDF_4_Full_PPM_NO", txtLink44.Text);
                cmd.Parameters.AddWithValue("@HRP_Phone_app_User_Guide_VIDEO_4_FULL_PPM_NO", txtLink45.Text);
                cmd.Parameters.AddWithValue("@HRP_Phone_app_User_Guide_PDF_4_FULL_PPM_NO", txtLink46.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_Guide_VIDEO_4_FULL_PPM_NO", txtLink47.Text);
                cmd.Parameters.AddWithValue("@HRP_File_Sharing_Platform_Guide_PDF_4_FULL_PPM_NO", txtLink48.Text);
                cmd.Parameters.AddWithValue("@HRP_Network_Devpmt_Guide_VIDEO_4_FULL_PPM_NO", txtLink49.Text);
                cmd.Parameters.AddWithValue("@HRP_Network_Devpmt_Guide_PDF_4_FULL_PPM_NO", txtLink50.Text);
                cmd.Parameters.AddWithValue("@Prj_mgmnt_Guide_VIDEO_4_FULL_PPM_NO", txtLink51.Text);
                cmd.Parameters.AddWithValue("@Prj_mgmnt_Guide_PDF_4_FULL_PPM_NO", txtLink52.Text);
                cmd.Parameters.AddWithValue("@PPM_Guide_VIDEO_4_FULL_PPM_NO", txtLink53.Text);
                cmd.Parameters.AddWithValue("@PPM_Guide_PDF_4_FULL_PPM_NO", txtLink54.Text);
                cmd.Parameters.AddWithValue("@HRP_Invoicing_Sys_Guide_VIDEO_4_FULL_PPM_NO", txtLink55.Text);
                cmd.Parameters.AddWithValue("@HRP_Invoicing_Sys_Guide_PDF_4_FULL_PPM_NO", txtLink56.Text);
                cmd.Parameters.AddWithValue("@Simple_Resource_Planning_Guide_VIDEO_4_FULL_PPM_NO", txtLink57.Text);
                cmd.Parameters.AddWithValue("@Simple_Resource_Planning_Guide_PDF_4_FULL_PPM_NO", txtLink58.Text);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@Training_Link_ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                lbl_TL.Visible = true;
                lbl_TL.Text = "Training Links with ID = " + ID + " got inserted in Demo_Training_Links table. Thanks!";
            }
        }
    }
}