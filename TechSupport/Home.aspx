<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     html{
            min-height:100%;
         }
        body{
            max-width: 100%;
            max-height:100%;
            background-repeat:no-repeat !important;
            margin:0; padding:0;
            background-attachment: fixed;
            background:lightgrey;
            background: -webkit-linear-gradient(lightgrey, grey);
            background: -o-linear-gradient(lightgrey, grey);
            background: -moz-linear-gradient(lightgrey, grey);
            background: linear-gradient(lightgrey, grey);
        }
        .container{
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 36px;
        }
        .auto-style5 {
            width: 705px;
        }
        .auto-style7 {
            width: 36px;
            height: 42px;
        }
        .auto-style8 {
            width: 705px;
            height: 42px;
            margin-left: 40px;
        }
        .auto-style9 {
            height: 42px;
        }
        .auto-style3 {
            width: 36px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 705px;
        }
        .auto-style4 {
            height: 23px;
        }
        .title{
            font-size: 40px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-weight: bold;
        }
        .title2{
            font-size: 20px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-weight: bold;
        }
        .title3{
            font-size: 20px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-weight: bold;
        }
        .title4{
            font-size:35px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-weight: bold;
        }
        </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Welcome to SportsPro Support Portal" CssClass="title"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Getting Started" CssClass="title2"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Text="Go to "></asp:Label>
                    <asp:LinkButton ID="btCustomer" runat="server" OnClick="btCustomer_Click">Customers</asp:LinkButton>
&nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Calibri" Text="section to search for your customer information"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="What do you think about our servise?" CssClass="title3"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:LinkButton ID="btSurvey" runat="server" OnClick="btSurvey_Click">Submit a survey</asp:LinkButton>
&nbsp;<asp:Label ID="Label6" runat="server" Font-Names="Calibri" Text="section to search for your customer information"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Group Members" CssClass="title4"></asp:Label>
                    &nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Negin Mashreghi - 100973300<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Harsha Sharma - 101039753<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Arzu Yildiz - 100742996<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Steven Moxley - 101047922</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    <div>
    
    </div>
    </form>
    </div>
</body>
</html>
