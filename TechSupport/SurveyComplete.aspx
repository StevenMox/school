<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="SurveyComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4><b>Survey Complete</b> - Description...</h4>
        <p>
            <asp:Label ID="lblThankYou" runat="server" Text="Thank you for your feedback!"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblContactBack" runat="server" Text="A customer service representative will contact you within 24 hours." Visible="False"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnReturnSurvey" runat="server" OnClick="btnReturnSurvey_Click" Text="Return to Survey" />
        </p>
    </div>
    </form>
</body>
</html>