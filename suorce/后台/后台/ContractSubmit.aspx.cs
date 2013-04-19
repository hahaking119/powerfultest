using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace 后台
{
    public class ContractNoManagement : System.Web.UI.Page
    {
        public string getContractNo()
        {
            string labeltext;
            labeltext = DateTime.Now.Year.ToString();
            labeltext += DateTime.Now.Month.ToString();
            labeltext += DateTime.Now.Day.ToString();
            labeltext += "." + DateTime.Now.Hour.ToString();
            labeltext += DateTime.Now.Minute.ToString();
            labeltext += DateTime.Now.Second.ToString();
            labeltext += "." + DateTime.Now.Millisecond.ToString();
            return labeltext;
        }
    }
    public partial class ContractMgr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ContractNoManagement cnm = new ContractNoManagement();
            lbContractNo.Text = cnm.getContractNo();
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
            doc.AppendChild(xmlelem);       
            XmlNode root = doc.SelectSingleNode("ContractInfo");

            //Add detailed content
            XmlElement[] xe = new XmlElement[15];

            xe[0] = doc.CreateElement("Consumer");
            xe[0].SetAttribute("Name", tboxVisitor.Text);
            xe[1] = doc.CreateElement("Agency");
            xe[1].SetAttribute("Name", tboxAgency.Text);
            xe[2] = doc.CreateElement("TourName");
            xe[2].SetAttribute("Name", tboxTourName.Text);
            xe[3] = doc.CreateElement("Days");
            xe[3].SetAttribute("Days", tboxDays.Text);
            xe[4] = doc.CreateElement("SetOffDate");
            xe[4].SetAttribute("Date", tboxSetOffDate.Text);
            xe[5] = doc.CreateElement("SetOffPlace");
            xe[5].SetAttribute("Place", tboxSetOffPlace.Text);
            xe[6] = doc.CreateElement("Destination");
            xe[6].SetAttribute("Place", tboxDestination.Text);
            xe[7] = doc.CreateElement("EndDate");
            xe[7].SetAttribute("Date", tboxEndDate.Text);
            xe[8] = doc.CreateElement("EndPlace");
            xe[8].SetAttribute("Place", tboxEndPlace.Text);
            xe[9] = doc.CreateElement("ifAgree");
            xe[9].SetAttribute("Decision", tboxAgree.Text);
            xe[10] = doc.CreateElement("InsuranceName");
            xe[10].SetAttribute("Name", tboxInsuranceName.Text);
            xe[11] = doc.CreateElement("InsuranceStandard");
            xe[11].SetAttribute("Limit", tboxInsuranceStd.Text);
            xe[12] = doc.CreateElement("InsuranceFee");
            xe[12].SetAttribute("Money", tboxInsuranceFee.Text);
            xe[13] = doc.CreateElement("TotalCost");
            xe[13].SetAttribute("Money", tboxTotalCost.Text);
            xe[14] = doc.CreateElement("AdditionalSections");
            xe[14].SetAttribute("Text", tboxAddtionalSections.Text);
            
            foreach(XmlElement xl in xe)
            {
                root.AppendChild(xl);
            }
  
            doc.Save(filename);

        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            XmlDocument ReadDoc = new XmlDocument();
            string filepath = System.Web.HttpContext.Current.Server.MapPath("/contracts/" + tboxNo.Text + ".xml");
            ReadDoc.Load(filepath);
            XmlNode root = ReadDoc.SelectSingleNode("ContractInfo");

            //and then read child nodes
            tboxVisitor.Text = root.ChildNodes[0].Attributes[0].Value;
            tboxAgency.Text = root.ChildNodes[1].Attributes[0].Value;
            tboxTourName.Text = root.ChildNodes[2].Attributes[0].Value;
            tboxDays.Text = root.ChildNodes[3].Attributes[0].Value;
            tboxSetOffDate.Text = root.ChildNodes[4].Attributes[0].Value;
            tboxSetOffPlace.Text = root.ChildNodes[5].Attributes[0].Value;
            tboxDestination.Text = root.ChildNodes[6].Attributes[0].Value;
            tboxEndDate.Text = root.ChildNodes[7].Attributes[0].Value;
            tboxEndPlace.Text = root.ChildNodes[8].Attributes[0].Value;
            tboxAgree.Text = root.ChildNodes[9].Attributes[0].Value;
            tboxInsuranceName.Text = root.ChildNodes[10].Attributes[0].Value;
            tboxInsuranceStd.Text = root.ChildNodes[11].Attributes[0].Value;
            tboxInsuranceFee.Text = root.ChildNodes[12].Attributes[0].Value;
            tboxTotalCost.Text = root.ChildNodes[13].Attributes[0].Value;
            tboxAddtionalSections.Text = root.ChildNodes[14].Attributes[0].Value;
        }
    }
}