using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace 后台
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //此乃获得所有合同的方法，获得的结果存储在fileinfo类型的数组ff里
            string filepath = System.Web.HttpContext.Current.Server.MapPath("/contracts/");
            System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(filepath);
            FileInfo[] ff = di.GetFiles("*.pdf");

            string test_string = null;   
            //foreach (FileInfo temp in ff)
            //{
            //    test_string += temp.Name + "<br>";
            //}
            test_string = ff[0].Name;
            lbTestString.Text = "/contracts/" + test_string;



        }
        //跳转到lbTestString.Text所指向的路径，此方法可以直接用
        protected void btnOpen_Click(object sender, EventArgs e)
        {
            Response.Redirect(lbTestString.Text);
            //Server.Transfer(lbTestString.Text);
        }
    }
}