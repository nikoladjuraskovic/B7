<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pocetna.aspx.cs" Inherits="B7Biblioteka2.formaXML.pocetna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <div class="header">
                <div class="title">
                    <h1>Biblioteka
                    </h1>
                </div>
                
                <div class="clear hideSkiplink">
                    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/pocetna.aspx" Text="Početna" />
                            <asp:MenuItem NavigateUrl="~/pregled.aspx" Text="Pregled" />
                            <asp:MenuItem NavigateUrl="~/autor.aspx" Text="O autoru" />
                            <asp:MenuItem NavigateUrl="~/uputstvo.aspx" Text="Uputstvo" />
                        </Items>
                    </asp:Menu>
                </div>
            </div>
            <div class="main">

                <span id="logovanje">Možete se logovati sa sledećim nalozima</span>

                <br />
                <br />

                Korisničko ime: Test
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                Korisničko ime: Test2
                <br />
                Lozinka: test123

                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Lozinka: test2123
                <br />                
                <hr />
                Unesite parametre za logovanje <span id="registrovanje">Registrujte se</span> ako nemate nalog

                <fieldset id="forma"> <!--u style.css na dnu dodat stil za id forma-->
                <legend>Forma za logovanje</legend>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Korisnicko ime:"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="235px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Lozinka: "></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="234px"></asp:TextBox>
                <br />
            <br />
                </fieldset>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Prijava" OnClick="Button1_Click"/>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>






            </div>
            <div class="clear">
            </div>
        </div>
        <div class="footer">
            &copy; Gradska Biblioteka
        </div>
    </form>
</body>
</html>
