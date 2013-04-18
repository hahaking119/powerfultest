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
    public partial class WebForm7 : System.Web.UI.Page
    {
        public static string CompanyName;
        public static string CompanyAddress;
        public static string Email;
        public static string CompanyTel;
        public static string Principal;
        public static string Phone;
        public static string Description;
        public static string StrConn = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        public List<usersys> listUser = new List<usersys>();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            //Check("莫雄剑");
        }
    }
}