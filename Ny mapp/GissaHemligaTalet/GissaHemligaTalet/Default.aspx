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
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Talet måste vara mellan 0-100" MaximumValue="100" MinimumValue="1" Display="Dynamic" ControlToValidate="TextBox1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Textfältet får inte vara tomt!" Display="Dynamic" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

            <asp:Button ID="Button1" runat="server" Text="skicka gissning" OnClick="Button1_Click" />

            <asp:PlaceHolder ID="GuessesPlaceHolder" runat="server">

                <asp:Label ID="Guesses" runat="server" Text=""></asp:Label>

            </asp:PlaceHolder>

            <asp:PlaceHolder ID="ResultPlaceHolder" runat="server" Visible="False">

                <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>

            </asp:PlaceHolder>
            <asp:Button ID="RandomNumberButton" runat="server" Text="Slumpar nytt heligt tal" OnClick="RandomNumberButton_Click" Visible="False" />
            
            <script type="text/javascript">
                var textBox = document.getElementById("ValueTextBox");
                textBox.focus();
                textBox.select();
            </script>
        </div>
    </form>

</body>
</html>
