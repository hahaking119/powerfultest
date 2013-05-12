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
using System.Windows.Forms;
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
        public string SuperUserName;
            
        public List<usersys> listUser = new List<usersys>();
        public void Page_Load(object sender, EventArgs e)
        {
            string susername = Session["susername"].ToString();
            SuperUserName = susername;
            //int i = 0;
         //   string superUserName=Session["UserName"]==null?"":Session["UserName"].ToString();
           // SuperUserName = Session["UserName"] == null ? "" : Session["susername"].ToString();
            SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();
            //MessageBox.Show("数据库连接成功", "好");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select * FROM [User] Where Rank=3";
            SqlDataReader reader = cmd.ExecuteReader();
            
            while (reader.Read())
            {

                usersys u = new usersys();
                u.UserName = reader["UserName"].ToString();
                u.Date = reader["Date"].ToString();
                if (reader["Rank"].ToString() == "3") 
                u.Rank = "管理员";
                u.UserState = reader["State"].ToString();
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
            cmdfreeze.CommandText=("update [User] set State='冻结' where UserName='"+str+"'");
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
             cmdfreeze.CommandText = ("update [User] set State='正常' where UserName='" + str + "'");
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
          
          [WebMethod]
          public static string register(string str1, string str2)
          {
             
              SqlConnection con = new SqlConnection(StrConn);
              SqlCommand cmd = new SqlCommand();
              cmd.Connection = con;
              cmd.CommandText = "select count (*) from [User] where UserName='" + str1 + "'";
              con.Open();
              int n = int.Parse(cmd.ExecuteScalar().ToString());
              con.Close();
              if (n == 0)
              {
                  
                  SqlCommand cmdid = new SqlCommand();
                  cmdid.Connection = con;
                  cmdid.CommandText = "select isnull(max(UserId),0)+1 from [User]";
                  con.Open();
                  int maxid;
                  try
                  {
                      maxid = Convert.ToInt32(cmdid.ExecuteScalar());
                  }
                  catch
                  {
                      maxid = 1;
                  }
                  DateTime date = DateTime.Now;
                  SqlCommand cmdinsert = new SqlCommand();
                  cmdinsert.Connection = con;
                  cmdinsert.CommandText = "SET IDENTITY_INSERT [User] ON Insert into [User](UserId,UserName,PassWord,Rank,Date,State) Values(@UserId,@UserName,@PassWord,@Rank,@Date,@State)";
                  cmdinsert.Parameters.Add("@UserId", SqlDbType.Int);
                  cmdinsert.Parameters.Add("@UserName", SqlDbType.NVarChar);
                  cmdinsert.Parameters.Add("@PassWord", SqlDbType.NVarChar);
                  cmdinsert.Parameters.Add("@Rank", SqlDbType.Int);
                  cmdinsert.Parameters.Add("@Date", SqlDbType.DateTime);
                  cmdinsert.Parameters.Add("@State", SqlDbType.NVarChar);
                  cmdinsert.Parameters["@UserId"].Value = maxid;
                  cmdinsert.Parameters["@UserName"].Value = str1;
                  cmdinsert.Parameters["@PassWord"].Value = str2;
                  cmdinsert.Parameters["@Rank"].Value = 3;
                  cmdinsert.Parameters["@Date"].Value = date;
                  cmdinsert.Parameters["@State"].Value = "正常";
                  cmdinsert.ExecuteNonQuery();
                  con.Close();
                  return "success";
              }
              else { return "False"; }
            
              //Session["UserName"] = 
              //   HttpContext.Current.Session["suername"] = str1;
              //  HttpContext.Current.Server.Transfer("admin.aspx");
              //     SUserName = str1;
          }
    }
}