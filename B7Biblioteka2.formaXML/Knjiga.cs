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
        public string isbn { get; set; }
        public string naslov { get; set; }
        public int stanje { get; set; }
        public int citano { get; set; }

        public Knjiga() { }

        public Knjiga(string isbn, string naslov, int stanje, int citano)
        {
            this.isbn = isbn;
            this.naslov = naslov;
            this.stanje = stanje;
            this.citano = citano;
        }
    }
}