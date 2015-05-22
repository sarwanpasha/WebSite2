<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Emailconfermation.aspx.cs" Inherits="Emailconfermation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                <link rel="SHORTCUT ICON" href="images/5.5.jpg">
    <title>Confermation</title>

 
</head>
<body>
    <form id="form1" runat="server">
            <h1 style="color:brown;"">
       You have Confermed Your Account. Click on link to continue

    </h1>
       
    <div>    
        <asp:Button ID="btnmain" runat="server" OnClick="Button1_Click" Text="Go to the Main Page" />
    
        <br />
        <br />
        <asp:Label ID="lbconfermation" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
