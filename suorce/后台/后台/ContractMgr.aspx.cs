using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace 后台
{
    public partial class ContractMgr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbContractNo.Text = DateTime.Now.Year.ToString();
            lbContractNo.Text += DateTime.Now.Month.ToString();
            lbContractNo.Text += DateTime.Now.Day.ToString();
            lbContractNo.Text += "." + DateTime.Now.Hour.ToString();
            lbContractNo.Text += DateTime.Now.Minute.ToString();
            lbContractNo.Text += DateTime.Now.Second.ToString();
            lbContractNo.Text += "." + DateTime.Now.Millisecond.ToString();
            
        }

        protected void btnCommit_Click(object sender, EventArgs e)
        {
            //Add some comments for GB2312 encoding
            string ContractNo = lbContractNo.Text;
            string filename = System.Web.HttpContext.Current.Server.MapPath("/contracts/"+ ContractNo + ".xml");
            XmlDocument doc = new XmlDocument();
            XmlDeclaration xmldecl;
            xmldecl = doc.CreateXmlDeclaration("1.0", "gb2312", null);
            doc.AppendChild(xmldecl);

            //Add global xml node
            XmlElement xmlelem = doc.CreateElement("", "ContractInfo", "");
            //XmlText xmltext = doc.CreateTextNode(tboxDate.Text);
            //xmlelem.AppendChild(xmltext);
            doc.AppendChild(xmlelem);

            XmlNode root = doc.SelectSingleNode("ContractInfo");
            XmlElement xe1 = doc.CreateElement("Cost");
            xe1.SetAttribute("Money", tboxCost.Text);
            XmlElement xe2 = doc.CreateElement("Timestamp");
            xe2.SetAttribute("Date", tboxDate.Text);
            root.AppendChild(xe1);
            root.AppendChild(xe2);
  
            doc.Save(filename);

        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            XmlDocument ReadDoc = new XmlDocument();
            string filepath = System.Web.HttpContext.Current.Server.MapPath("/contracts/" + tboxNo.Text + ".xml");
            ReadDoc.Load(filepath);
            XmlNode root = ReadDoc.SelectSingleNode("ContractInfo");

            //and then read child nodes
            lbCost.Text = root.ChildNodes[0].Attributes[0].Value;
            lbDate.Text = root.ChildNodes[1].Attributes[0].Value;

        }
    }
}