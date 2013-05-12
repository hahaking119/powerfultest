using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace 后台
{
    public partial class WebForm2 : System.Web.UI.Page
    {
       // public string SUserName = HttpContext.Current.Session["UserName"].ToString();
        public static string StrConn = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        public string SuperUserName;
        public string UserRank;
        protected void Page_Load(object sender, EventArgs e)
        {
            string susername = Session["susername"].ToString();
            SuperUserName = susername;
            SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();
           
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select Rank FROM [User] Where UserName='"+susername+"'";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                UserRank=reader["Rank"].ToString();
            }
            reader.Close();
            conn.Close();
        }
    }
}