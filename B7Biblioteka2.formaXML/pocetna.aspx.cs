using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B7Biblioteka2.formaXML
{
    public partial class pocetna : System.Web.UI.Page
    {

        /*
         ***Korisnicki nalozi i logovanje.***
         Nigde u zadatku nije precizno receno kako treba ovo implementirati.
        Ovde je napravljena baza podataka korisnika i na taj nacin se loguju korisnici.

        Bolji nacin bi bio napraviti template web forms projekat sa nalozima tj. sa individual user accounts. Mozete za domaci
        da probate kako bi to islo. Ako neko uradi, neka mi posalje. Frontend neka iskoristi postojeci.

        Losiji nacin bi bio napraviti klasu korisnika i listu tipa korisnik i na osnovu toga proveravati logovanje. Tada bi sve bilo u RAM memoriji.

         */


        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=B7;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Text = "";
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                string upit = "SELECT * FROM Korisnici WHERE KorisnickoIme='" + TextBox1.Text + " ' AND Sifra='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(upit, con);
                try
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                        Label3.Text = "Dobrodosli na stranicu!";
                    else
                        Label3.Text = "Neuspesno logovanje! Pokusajte ponovo!";

                    dr.Close();

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
                catch (Exception ex)
                {
                    Label3.Text = "Greska: " + ex.Message;
                }
                finally { con.Close(); }
            }
            else
            {
                Label3.Text = "Morate popuniti polja!";
            }
        }
    }
}