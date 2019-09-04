<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="Accelo_Booking.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 164px;
            left: 133px;
            z-index: 1;
            width: 449px;
            height: 460px;
        }
        .auto-style2 {
            height: 753px;
            width: 1587px;
            margin-top: 0px;
            margin-left: 0px;
        }
        .auto-style3 {
            z-index: 1;
            left: 633px;
            top: 309px;
            position: absolute;
            height: 86px;
            width: 377px;
        }
        .auto-style4 {
            z-index: 1;
            left: 635px;
            top: 515px;
            position: absolute;
            height: 82px;
            width: 376px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('Background/12.jpg'); background-repeat: inherit; " class="auto-style2">
            <asp:ImageButton ID="btnSignUp" runat="server" ImageUrl="~/Icons/signup.png" OnClick="btnSignUp_Click" CssClass="auto-style4" />
            <asp:ImageButton ID="btnSignIn" runat="server" ImageUrl="~/Icons/Sign In.png" OnClick="btnSignIn_Click" CssClass="auto-style3" />
            <asp:Image ID="Image1" runat="server" CssClass="auto-style1" ImageUrl="~/Background/player.png" />
        </div>
    </form>
</body>
</html>
