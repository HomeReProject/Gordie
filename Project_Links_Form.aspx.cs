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
    public partial class Webform4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("ADD_Row2_ABC_Test", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@GC", CheckBox1.Checked);
                cmd.Parameters.AddWithValue("@AE", CheckBox2.Checked);

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@ID";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                con.Open();
                cmd.ExecuteNonQuery();

                string ID = outputParameter.Value.ToString();
                Label1.Visible = true;
                Label1.Text = "New row of ID" + ID + " got inserted in ABC_Test table. Thanks!";
            }
        }        
    }
}