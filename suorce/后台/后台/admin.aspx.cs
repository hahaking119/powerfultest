using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Collections;
using System.Web.Services;
namespace 后台
{


    public class usersys
    {

        public string UserName;
        public string Date ;
        public string Rank ;
        public string UserState;
    }
    
    public partial class WebForm3 : System.Web.UI.Page
    {
        //public int length = 0;
       
       // public string[] UserName = new string[2000];
       // public string[] Date = new string[2000];
       // public string[] Rank = new string[2000]; 
       // public string[] UserState = new string[2000];
       //public  ArrayList arll = new ArrayList();
        public static string StrConn = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        public List<usersys> listUser = new List<usersys>();
        public void Page_Load(object sender, EventArgs e)
        {        
            int i = 0;
            SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();
            //MessageBox.Show("数据库连接成功", "好");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select * FROM [User]";
            SqlDataReader reader = cmd.ExecuteReader();
            
            while (reader.Read())
            {

                usersys u = new usersys();
                u.UserName = reader["UserName"].ToString();
                u.Date = reader["Date"].ToString();
                u.Rank = reader["Rank"].ToString();
                u.UserState = reader["UserState"].ToString();
                listUser.Add(u);
               
              /*  TextBox1.Text = reader["UserName"].ToString();*/
            }
            //length=listUser.Count;
            /*TextBox1.Text = UserName[1];*/
            reader.Close();
            conn.Close();
        }
        [WebMethod]
        public static string GetStr(string str)
        {
            return str;
        }
         [WebMethod]
        public static string Freeze(string str)
        {
            //if (MessageBox.Show("是否要冻结此管理员？", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes) ;
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText=("update [User] set UserState='冻结' where UserName='"+str+"'");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();
            
            return "success";
        }

        [WebMethod]
         public static string UnFreeze(string str)
         {
             SqlConnection conn = new SqlConnection(StrConn);
             SqlCommand cmdfreeze = new SqlCommand();
             cmdfreeze.Connection = conn;
             conn.Open();
             cmdfreeze.CommandText = ("update [User] set UserState='正常' where UserName='" + str + "'");
             cmdfreeze.ExecuteNonQuery();
             conn.Close();

             return "success";
         }
          [WebMethod]
         public static string Delete(string str)
         {
             SqlConnection conn = new SqlConnection(StrConn);
             SqlCommand cmdfreeze = new SqlCommand();
             cmdfreeze.Connection = conn;
             conn.Open();
             cmdfreeze.CommandText = ("delete from [User] where UserName='" + str + "'");
             cmdfreeze.ExecuteNonQuery();
             conn.Close();

             return "success";
         }

    }
}