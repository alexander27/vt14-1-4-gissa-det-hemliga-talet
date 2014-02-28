<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GissaHemligaTalet.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>Gissa det hemliga talet</h1>
        <div id="topbar"></div>

        <asp:Label ID="Label1" runat="server" Text="Ange ett heltal mellan 1 och 100"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Textfältet får inte vara tomt!" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" MaximumValue="99" MinimumValue="1" Display="Dynamic" ControlToValidate="TextBox1"></asp:RangeValidator>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
