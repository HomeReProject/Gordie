using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Diagnostics;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;


namespace GORDIE
{
    public class Logger
    {
        public static void Log(Exception exception)
        {
            StringBuilder sbExceptionMessage = new StringBuilder();

            do
            {
                sbExceptionMessage.Append("EXCEPTION TYPE" + Environment.NewLine);
                sbExceptionMessage.Append(exception.GetType().Name);
                sbExceptionMessage.Append(Environment.NewLine + Environment.NewLine);
                sbExceptionMessage.Append("MESSAGE" + Environment.NewLine);
                sbExceptionMessage.Append(exception.Message + Environment.NewLine + Environment.NewLine);
                sbExceptionMessage.Append("STACK TRACE" + Environment.NewLine);
                sbExceptionMessage.Append(exception.StackTrace + Environment.NewLine + Environment.NewLine);

                exception = exception.InnerException;
            } while (exception != null);
            String logProvider = ConfigurationManager.AppSettings["logProvider"];
            if (logProvider.ToLower() == "both")
            {
                LogtoDB(sbExceptionMessage.ToString());
                SendEmail(sbExceptionMessage.ToString());
            }
        }
        private static void LogtoDB(string log)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("spInsertLog", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter param = new SqlParameter("@ExceptionMessage", log);
            cmd.Parameters.Add(param);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public static void SendEmail(string emailbody)
        {
            MailMessage mailMessage = new MailMessage("chetana@homereproject.com", "information@homereproject.com")
            {
                Subject = "Exception from Gordie",
                Body = emailbody
            };

            SmtpClient smptClient = new SmtpClient();
            smptClient.Send(mailMessage);


        }

    }
}