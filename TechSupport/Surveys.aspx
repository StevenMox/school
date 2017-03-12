<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Surveys.aspx.cs" Inherits="Surveys" %>

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
        .auto-style3 {
            width: 218px;
        }
        .auto-style4 {
            width: 207px;
        }
        .auto-style5 {
            width: 248px;
        }
        .auto-style6 {
            width: 426px;
        }
        .auto-style7 {
            width: 248px;
            height: 37px;
        }
        .auto-style8 {
            height: 37px;
        }
        .auto-style9 {
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Incidents] ORDER BY [CustomerID]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <em>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" Text="Surveys" CssClass="auto-style9"></asp:Label>
                    </em>
                    <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Text="- Collect feedback from customers"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Names="Calibri" Font-Size="Small" Text="Enter your customer ID:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txbCustomerID" runat="server" ValidationGroup="abcd"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="bttGetIncidents" runat="server" Text="Get Incidents" OnClick="bttGetIncidents_Click" ValidationGroup="abcd" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbCustomerID" Display="Dynamic" ErrorMessage="CustomerID is required" ForeColor="Red" ValidationGroup="abcd"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txbCustomerID" CultureInvariantValues="True" Display="Dynamic" ErrorMessage="ID should be an integer" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="abcd"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Width="527px" Enabled="False" EnableTheming="True"></asp:ListBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ListBox1" Display="Dynamic" ErrorMessage="You must select an incident." ForeColor="Red" ValidationGroup="efgh"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblNoIncidentInfo" runat="server" Text="No incidents" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="Please rate this incident by the following categories:" Enabled="False"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="Response time:" Enabled="False"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal" TextAlign="Left" Width="821px" Enabled="False">
                        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                        <asp:ListItem Value="3">Satisfied</asp:ListItem>
                        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="Technician efficiency:" Enabled="False"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatDirection="Horizontal" TextAlign="Left" Width="821px" Enabled="False">
                        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                        <asp:ListItem Value="3">Satisfied</asp:ListItem>
                        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Problem resolution:" Enabled="False"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatDirection="Horizontal" TextAlign="Left" Width="821px" Enabled="False">
                        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                        <asp:ListItem Value="3">Satisfied</asp:ListItem>
                        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="Additional comments:" Enabled="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="65px" TextMode="MultiLine" Width="366px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Please contact me to discuss this incident" />
                    <asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatDirection="Horizontal" Enabled="False">
                        <asp:ListItem Value="0">Contact by email</asp:ListItem>
                        <asp:ListItem Value="1">Contact by phone</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" Enabled="False" OnClick="ButtonSubmit_Click" ValidationGroup="efgh" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>
