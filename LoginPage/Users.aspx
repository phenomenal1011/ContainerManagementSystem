<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>CMS</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="welcome" runat="server" Text="Welcome..."></asp:Label>
        <br />
        <asp:Button ID="Button_logout" runat="server" OnClick="Button_logout_Click" Text="Logout" />
    
    </div>
        <div>
          
<style>
.mySlides {display:none;}
</style>




<div class="w3-content w3-section" style="max-width:1000px">
    <img class="mySlides" src="img_la.jpg" style="width: 100%">
  <img class="mySlides" src="img_ny.jpg" style="width:100%">
  <img class="mySlides" src="img_chicago.jpg" style="width:100%">
</div>


            </div>
    </form>
</body>
</html>
<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 2000); // Change image every 2 seconds
    }
</script>