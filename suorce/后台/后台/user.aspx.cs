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
    //public class userdetailsys
    //{

    //    public string CompanyName;
    //    public string CompanyAddress;
    //    public string Email;
    //    public string CompanyTel;
    //    public string Principal;
    //    public string Phone;
    //    public string Description;
    //}
    public class usersyss
    {

        public string UserName;
        public string CompanyNameOne;
        public string Date;
        public string Rank;
        public string UserState;
    }

    public partial class WebForm4 : System.Web.UI.Page
    {
        //public int length = 0;

        // public string[] UserName = new string[2000];
        // public string[] Date = new string[2000];
        // public string[] Rank = new string[2000]; 
        // public string[] UserState = new string[2000];
        //public  ArrayList arll = new ArrayList();
        public static string CompanyName;
        public static string CompanyAddress;
        public static string Email;
        public static string CompanyTel;
        public static string Principal;
        public static string Phone;
        public static string Description;
        public static string StrConn = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        public List<usersyss> listUser = new List<usersyss>();
        public string SuperUserName;
        public string UserRank;
        //public static List<userdetailsys> listUserDetail = new List<userdetailsys>();
        public void Page_Load(object sender, EventArgs e)
        {
            string susername = Session["susername"].ToString();
            SuperUserName = susername;
            SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();

            SqlCommand cmdd = new SqlCommand();
            cmdd.Connection = conn;
            cmdd.CommandText = "Select Rank FROM [User] Where UserName='" + susername + "'";
            SqlDataReader readerr = cmdd.ExecuteReader();
            while (readerr.Read())
            {
                UserRank = readerr["Rank"].ToString();
            }
            readerr.Close();
            conn.Close();
           
            load();
        }
        [WebMethod]
        public void load()
        {
            //int i = 0;
            SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();
            //MessageBox.Show("数据库连接成功", "好");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select [User].*,CompanyName FROM [User],[UserDetail] where ([Rank]=1 or [Rank]=2) and [UserDetail].UserId=[User].UserId";
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                usersyss u = new usersyss();
                u.UserName = reader["UserName"].ToString();
                u.CompanyNameOne = reader["CompanyName"].ToString();
                u.Date = reader["Date"].ToString();
                if (reader["Rank"].ToString() == "1")
                { u.Rank = "普通会员"; }
                else
                { u.Rank = "VIP会员"; }
                u.UserState = reader["State"].ToString();
                listUser.Add(u);

                /*  TextBox1.Text = reader["UserName"].ToString();*/
            }
            //length=listUser.Count;
            /*TextBox1.Text = UserName[1];*/
            reader.Close();
            conn.Close();
            //Check("莫雄剑");
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
            cmdfreeze.CommandText = ("update [User] set State='冻结' where UserName='" + str + "'");
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
        public static string UNPass(string str)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText = ("update [User] set State='审核未通过' where UserName='" + str + "'");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();

            return "success";
        }
         [WebMethod]
          public static string Check(string str)
          {
              
              SqlConnection conn = new SqlConnection(StrConn);
              conn.Open();
              //MessageBox.Show("数据库连接成功", "好");
              SqlCommand cmd = new SqlCommand();
              cmd.Connection = conn;
              cmd.CommandText = "Select * FROM [UserDetail] WHERE [UserDetail].UserId=(Select UserId FROM [User] where UserName='" + str + "')";
              SqlDataReader reader = cmd.ExecuteReader();
              string retData = "";
              while (reader.Read())
              {
                  
                  //userdetailsys d = new userdetailsys();
                  retData += reader["CompanyName"].ToString() + "#";
                  retData += reader["CompanyAddress"].ToString() + "#";
                  retData += reader["CompanyTel"].ToString() + "#";
                  retData += reader["Principal"].ToString() + "#";
                  retData += reader["Email"].ToString() + "#";
                  retData += reader["Phone"].ToString() + "#";
                  retData += reader["Description"].ToString();
                  //listUserDetail.Add(d);

                  /*  TextBox1.Text = reader["UserName"].ToString();*/
              }
              //length=listUser.Count;
              /*TextBox1.Text = UserName[1];*/
              reader.Close();
              conn.Close();

              return retData;
             
          }
    }
}