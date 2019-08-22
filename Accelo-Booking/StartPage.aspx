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
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 753px; background-image: url('Background/background - Copy.jpg'); background-repeat: inherit; width: 1587px;" class="auto-style2">
            <asp:ImageButton ID="btnSignUp" runat="server" ImageUrl="~/Icons/signup.png" OnClick="btnSignUp_Click" style="z-index: 1; left: 603px; top: 507px; position: absolute; height: 100px; width: 430px" />
            <asp:ImageButton ID="btnSignIn" runat="server" ImageUrl="~/Icons/Sign In.png" OnClick="btnSignIn_Click" style="z-index: 1; left: 602px; top: 298px; position: absolute; height: 100px; width: 430px" />
            <asp:Image ID="Image1" runat="server" CssClass="auto-style1" ImageUrl="~/Background/player.png" />
        </div>
    </form>
</body>
</html>
