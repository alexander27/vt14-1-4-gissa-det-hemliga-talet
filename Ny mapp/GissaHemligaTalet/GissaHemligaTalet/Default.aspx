<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GissaHemligaTalet.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Gissa det hemliga talet</h1>

            <div id="topbar"></div>
            <asp:ValidationSummary ID="ValidationSummary1" HeaderText="Ett fel inträffade" runat="server" CssClass="valid" />
            <asp:Label ID="Label1" runat="server" Text="Ange ett heltal mellan 1 och 100"></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Talet måste vara mellan 0-100" Text="*" MaximumValue="100" MinimumValue="1" Display="Dynamic" ControlToValidate="TextBox1" Type="Integer" CssClass="valid"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Textfältet får inte vara tomt!" Text="*" Display="Dynamic" ControlToValidate="TextBox1" CssClass="valid"></asp:RequiredFieldValidator>

            <asp:Button ID="Button1" runat="server" Text="skicka gissning" OnClick="Button1_Click" />

            <asp:PlaceHolder ID="GuessesPlaceHolder" runat="server">

                <asp:Label ID="Guesses" runat="server" Text=""></asp:Label>

            </asp:PlaceHolder>

            <asp:PlaceHolder ID="ResultPlaceHolder" runat="server" Visible="False">

                <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>

            </asp:PlaceHolder>
            <asp:Button ID="RandomNumberButton" runat="server" Text="Slumpar nytt heligt tal" OnClick="RandomNumberButton_Click" Visible="False" CausesValidation="false" />
            
            <script type="text/javascript">
                var textBox = document.getElementById("TextBox1");
                textBox.focus();
                textBox.select();
            </script>
        </div>
    </form>

</body>
</html>
