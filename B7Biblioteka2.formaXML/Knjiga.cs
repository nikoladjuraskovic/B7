using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls.WebParts;

namespace B7Biblioteka2.formaXML
{
    public class Knjiga
    {
        private string isbn;
        private string naslov;
        private int stanje;
        private int citano;


        
        public string ISBN
        {
            get { return isbn; }
            set { isbn = value; }   
        }
        public string Naslov
        {
            get { return naslov; }
            set { naslov = value; }
        }
        
        public int Stanje
        {
            get { return stanje; }
            set { stanje = value; }
        }

        public int Citano
        {
            get { return citano; }
            set { citano = value; }
        }

        public Knjiga() { }

    }
}