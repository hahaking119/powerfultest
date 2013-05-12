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
            public string RouteDetails;
            public string ContractState;
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
        public static string RouteDetails;
        public static string[] PlaceId = new string[20]; 
        public static string[] ContractState=new string[20] ;
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
        public string SuperUserName;
        public string UserRank;
        protected void Page_Load(object sender, EventArgs e)
        {
            string susername = Session["susername"].ToString();
            SuperUserName = susername;
           SqlConnection conn = new SqlConnection(StrConn);
            conn.Open();
            SqlCommand cmdd = new SqlCommand();
            cmdd.Connection = conn;
            cmdd.CommandText = "Select Rank FROM [User] Where UserName='" + susername + "'";
            SqlDataReader readerd = cmdd.ExecuteReader();
            while (readerd.Read())
            {
                UserRank = readerd["Rank"].ToString();
            }
            readerd.Close();
            conn.Close();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            conn.Open();
            cmd.CommandText = "Select [Route].*,CompanyName from [Route],[UserDetail] Where [Route].UserDetailId =[UserDetail].UserDetailId";
            SqlDataReader reader = cmd.ExecuteReader();
              while (reader.Read())
            {
                Routesys r = new Routesys();
                r.RouteId=reader["RouteId"].ToString();
              //  r.UserId=reader["UserId"].ToString();
                r.RouteName=reader["RouteName"].ToString();
                r.CompanyName=reader["CompanyName"].ToString();
                r.Pubdate=reader["PostTime"].ToString();
                r.RouteState=reader["RouteState"].ToString();
                r.RouteDetails = reader["RouteDetail"].ToString();
               // r.ContractState = reader["ContractState"].ToString();
                ListRoute.Add(r);
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

            for (int k = 0; k < 20; k++)
            {
                PlaceName[k] = null;
                PlaceStartTime[k] = null;
                PlacePrice[k] = null;
                PlaceDays[k] = null;
                PlaceDetail[k] = null;
                PlacePnum[k] = null;
 
            }
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT [Route].*,[Place].* FROM [Place] left join [Route] on [Place].RouteId=[Route].RouteId Where [Place].RouteId="+id+"";
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                RouteName=reader["RouteName"].ToString();
                RouteStartTime=reader["StartTime"].ToString();
                RouteDays=reader["LastDays"].ToString();
                Pubdate=reader["PostTime"].ToString();
                //CompanyName=reader["CompanyName"].ToString();
                RouteType=reader["RouteType"].ToString();
                RouteState=reader["RouteState"].ToString();
                RouteDetails = reader["RouteDetail"].ToString();
                PlaceId[i] = reader["PlaceId"].ToString();
                ContractState[i] = reader["ContractState"].ToString();
                PlaceName[i] = reader["PlaceName"].ToString();
                PlaceStartTime[i] = reader["StartTime"].ToString();
                PlacePrice[i] = reader["Price"].ToString();
                PlaceDays[i] = reader["Days"].ToString();
                PlaceDetail[i] = reader["PlaceDescription"].ToString();
                PlacePnum[i] = reader["PersonNumber"].ToString();
                i++;
            }
            for (int j = 0; j < PlaceName.Length ; j++)
            {
                if (PlaceName[j] != null)
                  length++;
                if (PlaceName[j] == null)
                    break;
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
            cmdfreeze.CommandText = ("update [Route] set RouteState='正常' where RouteId=" + id + "");
            cmdfreeze.ExecuteNonQuery();
            conn.Close();

            return "success";
        }
        //[WebMethod]
        //public static string UnFreezeRoute(int id)
        //{
        //    SqlConnection conn = new SqlConnection(StrConn);
        //    SqlCommand cmdfreeze = new SqlCommand();
        //    cmdfreeze.Connection = conn;
        //    conn.Open();
        //    cmdfreeze.CommandText = ("update [Route] set UserState='正常' where RouteId=" + id + "");
        //    cmdfreeze.ExecuteNonQuery();
        //    conn.Close();

        //    return "success";
        //}
        [WebMethod]
        public static string UnPassRoute(int id)
        {
            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmdfreeze = new SqlCommand();
            cmdfreeze.Connection = conn;
            conn.Open();
            cmdfreeze.CommandText = ("update [Route] set RouteState='审核未通过' where RouteId=" + id + "");
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