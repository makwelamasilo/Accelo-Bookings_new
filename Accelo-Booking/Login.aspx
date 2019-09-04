<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Accelo_Booking.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 367px;
            left: 604px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 291px;
            left: 605px;
            z-index: -2;
            width: 85px;
            height: 31px;
        }
        .auto-style8 {
            position: absolute;
            top: 287px;
            left: 738px;
            z-index: 1;
            width: 259px;
            height: 29px;
        }
        .auto-style10 {
            z-index: 1;
            left: 686px;
            top: 441px;
            position: absolute;
            height: 70px;
            width: 261px;
        }
        .auto-style12 {
            z-index: -1;
        }
        .auto-style13 {
            position: absolute;
            top: 130px;
            left: 753px;
            z-index: 1;
            width: 131px;
            height: 122px;
        }
        .auto-style14 {
            position: absolute;
            top: 369px;
            left: 741px;
            z-index: 1;
            width: 252px;
            height: 21px;
        }
    </style>
</head>
<body style="height: 356px">
    <form id="form1" runat="server">
        <div class="auto-style12" style="background-image: url('Background/12.jpg'); height: 753px; width: 1587px;">
            <asp:ImageButton ID="btnSignIn" runat="server" CssClass="auto-style10" ForeColor="White" ImageUrl="~/Icons/Sign In.png" OnClick="btnSignIn_Click" />
            <asp:TextBox ID="txtUsername" runat="server" BorderStyle="None" CssClass="auto-style8"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Size="X-Large" ForeColor="White" style="z-index: 1" Text="Username:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Font-Size="X-Large" ForeColor="White" Text="Password:"></asp:Label>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style13" ImageUrl="~/Icons/icons8-account-100.png" />
            <input id="loginPassword" class="auto-style14" type="password" /></div>
    </form>
</body>
</html>
