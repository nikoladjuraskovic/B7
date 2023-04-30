<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pregled.aspx.cs" Inherits="B7Biblioteka2.formaXML.pregled" %>

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
                <h1>
                    Biblioteka
                </h1>
            </div>
            <div class="loginDisplay">
                <asp:LoginView ID="HeadLoginView" runat="server" EnableViewState="false">
                    <AnonymousTemplate>
                       
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        Welcome <span class="bold"><asp:LoginName ID="HeadLoginName" runat="server" /></span>!
                        [ <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" LogoutText="Log Out" LogoutPageUrl="~/"/> ]
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/pocetna.aspx" Text="Početna"/>
                        <asp:MenuItem NavigateUrl="~/pregled.aspx" Text="Pregled"/>
                        <asp:MenuItem NavigateUrl="~/autor.aspx" Text="O autoru"/>
                        <asp:MenuItem NavigateUrl="~/uputstvo.aspx" Text="Uputstvo"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
                       
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="ISBN" DataField="isbn"></asp:BoundField>
                    <asp:BoundField DataField="naslov" HeaderText="naslov"></asp:BoundField>
                    <asp:BoundField DataField="stanje" HeaderText="stanje"></asp:BoundField>
                    <asp:BoundField DataField="citano" HeaderText="citano"></asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

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
