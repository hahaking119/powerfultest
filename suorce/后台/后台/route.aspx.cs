using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

namespace 后台
{
     public class Routesys
        {
            public string RouteId;
            public string UserId;
            public string RouteName;
            public string Pubdate;
            public string RouteState;
            public string CompanyName;
        }
    public partial class WebForm5 : System.Web.UI.Page
    {
        public static string RouteName;
        public static string RouteStartTime;
        public static string RouteDays;
        public static string Pubdate;
        public static string CompanyName;
        public static string RouteType;
        public static string RouteState;
        public static string[] PlaceDays = new string[20];
        public static string[] PlacePrice = new string[20];
        public static string[] PlaceStartTime= new string[20];
        public static string[] PlaceName = new string[20];
        public static string[] PlaceDetail = new string[20];
        public static string[] PlacePnum = new string[20];
        
        public static string StrConn=System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        public static int i;
        public static int length;
        public List<Routesys> ListRoute=new List<Routesys>();

        protected void Page_Load(object sender, EventArgs e)
        {
           SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();
            
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select [route].*,CompanyName from [Route],[UserDetail] Where [Route].UserId =[UserDetail].UserId";
            SqlDataReader reader = cmd.ExecuteReader();
              while (reader.Read())
            {
                Routesys r = new Routesys();
                r.RouteId=reader["RouteId"].ToString();
                r.UserId=reader["UserId"].ToString();
                r.RouteName=reader["RouteName"].ToString();
                r.CompanyName=reader["CompanyName"].ToString();
                r.Pubdate=reader["Pubdate"].ToString();
                r.RouteState=reader["RouteState"].ToString();              
            }
            reader.Close();
            conn.Close();
        }
        [WebMethod]
        public static void RouteCheck(int id)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();
            i = 0;
            length = 0;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT [Route].*,[Place].* FROM [Place] left join [Route] on [Place].RouteId=[Route].RouteId Where [Place].RouteId="+id+"";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                RouteName=reader["RoutName"].ToString();
                RouteStartTime=reader["StartTime"].ToString();
                RouteDays=reader["RouteDays"].ToString();
                Pubdate=reader["Pubdate"].ToString();
                CompanyName=reader["CompanyName"].ToString();
                RouteType=reader["RouteType"].ToString();
                RouteState=reader["RouteState"].ToString();
                PlaceName[i] = reader["PlaceName"].ToString();
                PlaceStartTime[i] = reader["PlaceStartTime"].ToString();
                PlacePrice[i] = reader["PlacePrice"].ToString();
                PlaceDays[i] = reader["PlaceDays"].ToString();
                PlaceDetail[i] = reader["PlaceDetail"].ToString();
                PlacePnum[i] = reader["PlacePnum"].ToString();
                i++;
            }
            for (int j = 0; j < PlaceName.Length; j++)
            {
                if (PlaceName[j] != null)
                    length++;
            }
        }
        [WebMethod]
        public static string FreezeRoute(int id)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText = ("update [Route] set RouteState='冻结' where RouteId=" + id + "");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();

            return "success";
        }
        [WebMethod]
        public static string UnFreezeRoute(int id)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText = ("update [Route] set UserState='正常' where RouteId=" + id + "");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();

            return "success";
        }
        [WebMethod]
        public static string UnFreezeRoute(int id)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText = ("update [Route] set UserState='正常' where RouteId=" + id + "");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();

            return "success";
        }
        [WebMethod]
        public static string UnPassRoute(int id)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText = ("update [Route] set UserState='审核未通过' where RouteId=" + id + "");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();

            return "success";
        }
        [WebMethod]
        public static string DeleteRoute(int id)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText = ("delete from [Route] where RouteId=" + id + "");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();

            return "success";
        }
    }
}