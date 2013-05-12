using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace 后台
{       
    public partial class WebForm1 : System.Web.UI.Page
    {

        public static string StrConn = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        public static string SUserName;
        //public string User
        //{
        //    get
        //    {
        //        return SUserName;
        //    }
        //}
        protected void Page_Load(object sender, EventArgs e)
        {

         //   Session["susername"] = SUserName;
            //Response.Redirect("admin.aspx");

         //   Session["test"] = 2003;
        }
        [WebMethod]
        public static string Login(string str1,string str2)
        {
            //string hhh =HttpContext.Current.Request["rank"].ToString();
            //MessageBox.Show(hhh);
            SUserName = str1;
            HttpContext.Current.Session["susername"]=SUserName;
     //       HttpContext.Current.Server.Transfer("admin.aspx");
       //     SUserName=str2;
            SqlConnection con = new SqlConnection(StrConn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText ="select count (*) from [User] where UserName='" + str1 + "' and Password='" + str2 + "' and (Rank=3 or Rank =4) and State='正常'";
            con.Open();
            int n = int.Parse(cmd.ExecuteScalar().ToString());
            con.Close();
            if (n > 0) { return "success"; }
            else { return "False"; }
            
           //Session["UserName"] = 
         //   HttpContext.Current.Session["suername"] = str1;
          //  HttpContext.Current.Server.Transfer("admin.aspx");
       //     SUserName = str1;
        }
    }
}