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


                <div class="loginDisplay">




                    <h2>Log In</h2>
                    <p>
                        Please enter your username and password.
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Register</asp:HyperLink>
                        if you don't have an account.
                    </p>





                    <div class="accountInfo">
                        <fieldset class="login">
                            <legend>Account Information</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>

                            </p>
                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>

                            </p>
                            <p>
                                <asp:CheckBox ID="RememberMe" runat="server" />
                                <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                            </p>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" />
                        </p>
                    </div>




                    <loggedintemplate>
                        Dobrodošli na stranicu!
                        Welcome <span class="bold">
                            <asp:LoginName ID="HeadLoginName" runat="server" />
                        </span>!
                        [
                            <asp:LoginStatus ID="HeadLoginStatus" runat="server" LogoutAction="Redirect" LogoutText="Log Out" LogoutPageUrl="~/" />
                        ]
                    </loggedintemplate>

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
