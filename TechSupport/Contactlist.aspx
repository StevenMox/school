<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactlist.aspx.cs" Inherits="Contactlist" %>

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
            width: 46px;
        }
        .auto-style5 {
            width: 386px;
        }
        .auto-style3 {
            width: 39px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 386px;
        }
        .auto-style4 {
            height: 23px;
        }
        </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" Text="Customers"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Calibri" Text="- Manage your contact list"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Text="Contact list:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;&nbsp;<asp:ListBox ID="tbContactList" runat="server" Width="389px"></asp:ListBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Button ID="btRemoveContact" runat="server" OnClick="btRemoveContact_Click" Text="Remove Contact" />
                    <br />
                    <br />
                    <asp:Button ID="btEmptyList" runat="server" OnClick="btEmptyList_Click" Text="Empty List " />
                </td>
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
&nbsp;&nbsp;&nbsp;<asp:Button ID="btAddCustomers" runat="server" OnClick="btAddCustomers_Click" Text="Select Additinal Customers " Width="202px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
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
    
    </div>
    </form>
    </div>
</body>
</html>
