<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="UserLogin" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="auto-style1">
    
        <strong>Login Page</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Username:</td>
                <td>
                    <asp:TextBox ID="TextBoxid" runat="server" Width="172px"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxid" ErrorMessage="Please Enter Username!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxpasswd" runat="server" Width="171px" TextMode="Password"></asp:TextBox>
&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxpasswd" ErrorMessage="Please Enter Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" Width="179px" />
&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registeration.aspx">New User Registeration</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
