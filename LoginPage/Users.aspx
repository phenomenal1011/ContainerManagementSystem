<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="welcome" runat="server" Text="Welcome..."></asp:Label>
        <br />
        <asp:Button ID="Button_logout" runat="server" OnClick="Button_logout_Click" Text="Logout" />
    
    </div>
    </form>
</body>
</html>
