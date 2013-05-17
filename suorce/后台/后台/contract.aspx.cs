using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;


namespace 后台
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected string FilePath;
            
        public string StrConn = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        public string SuperUserName;
        public string UserRank;
        public string Url;
        protected void Page_Load(object sender, EventArgs e)
        {
            ////此乃获得所有合同的方法，获得的结果存储在fileinfo类型的数组ff里
            //string filepath = System.Web.HttpContext.Current.Server.MapPath("/contracts/");
            //System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(filepath);
            //FileInfo[] ff = di.GetFiles("*.pdf");

            //string test_string = null;   
            ////foreach (FileInfo temp in ff)
            ////{
            ////    test_string += temp.Name + "<br>";
            ////}
            //test_string = ff[0].Name;
            //lbTestString.Text = "/contracts/" + test_string;
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

      //      int Id = int.Parse(HttpContext.Current.Request.QueryString["id"]==null?"0":HttpContext.Current.Request.QueryString["id"]);
            int Id = int.Parse(Request.QueryString["id"]);
            SqlConnection con = new SqlConnection(StrConn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select ContractUrl from [Contract] where ContractId=(Select ContractId from [Place] where PlaceId =" + Id + ")";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            
            while (reader.Read())
            {
                Url = reader["ContractUrl"].ToString();
            }
            reader.Close();
            con.Close();
            //string fullPath = Url;
            //string str=Url.Substring(Url.IndexOf(".")+1);
            //string swfPath = str + ".swf";
            //this.ConvertToSWF(fullPath, swfPath);
            FilePath = Url;
           // MessageBox.Show(Id); 
        }
        //public void ConvertToSWF(string oldFile, string swfFile)
        //{
        //    System.Diagnostics.Process pc = new System.Diagnostics.Process();
        //    pc.StartInfo.FileName = @"C:\Program Files\Macromedia\FlashPaper 2\FlashPrinter.exe";
        //    pc.StartInfo.Arguments = string.Format("{0} -o {1}", oldFile, swfFile);
        //    pc.StartInfo.CreateNoWindow = true;
        //    pc.StartInfo.UseShellExecute = false;
        //    pc.StartInfo.RedirectStandardInput = false;
        //    pc.StartInfo.RedirectStandardOutput = false;
        //    pc.StartInfo.RedirectStandardError = true;
        //    pc.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
        //    pc.Start();
        //    pc.WaitForExit();
        //    pc.Close();
        //    pc.Dispose();
        //}
        //跳转到lbTestString.Text所指向的路径，此方法可以直接用
        //protected void btnOpen_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect(lbTestString.Text);
        //    //Server.Transfer(lbTestString.Text);
        //}
    }
}