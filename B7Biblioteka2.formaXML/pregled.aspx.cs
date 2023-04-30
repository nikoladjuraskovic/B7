using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace B7Biblioteka2.formaXML
{
    public partial class pregled : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Knjiga> knjige=new List<Knjiga>();
            XmlTextReader r = new XmlTextReader(Server.MapPath("biblioteka.xml"));
            Knjiga k = new Knjiga();
            while(r.Read())
            {
                if(r.NodeType == XmlNodeType.Element && r.Name=="knjiga")
                {
                    k = new Knjiga();
                    k.ISBN = r.GetAttribute(0);
                }
                if (r.NodeType == XmlNodeType.Element && r.Name == "naslov")
                {
                    r.Read();
                    k.Naslov = r.Value;
                }
                if (r.NodeType == XmlNodeType.Element && r.Name == "stanje")
                {
                    r.Read();
                    k.Stanje = int.Parse(r.Value);
                }
                if (r.NodeType == XmlNodeType.Element && r.Name == "citano")
                {
                    r.Read();
                    k.Citano = int.Parse(r.Value);
                }
                if (r.NodeType == XmlNodeType.EndElement && r.Name == "knjiga")
                    knjige.Add(k);

            }
            r.Close();
            knjige.Sort(delegate (Knjiga a,Knjiga b) {
                return b.Citano.CompareTo(a.Citano);
            });
            GridView1.DataSource= knjige;
            GridView1.DataBind();
        }
    }
}