using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;


namespace 后台
{       
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static string StrConn = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        protected void Page_Load(object sender, EventArgs e)
        {
          
          
            
        }
        [WebMethod]
        public static string Login(string str1,string str2)
        {
            HttpContext.Current.Session["UserName"] = str1;
            
            SqlConnection con = new SqlConnection(StrConn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText ="select count (*) from [User] where UserName='" + str1 + "' and Password='" + str2 + "' and (Rank=3 or Rank =4) and UserState='正常'";
            con.Open();
            int n = int.Parse(cmd.ExecuteScalar().ToString());
            con.Close();
            if (n > 0)  return "success"; 
            else return "False";
           //Session["UserName"] = 
            
        }
    }
}