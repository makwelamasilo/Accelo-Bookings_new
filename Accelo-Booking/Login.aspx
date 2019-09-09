<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Accelo_Booking.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 368px;
            left: 607px;
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
            top: 292px;
            left: 738px;
            z-index: 1;
            width: 247px;
            height: 26px;
        }
        .auto-style10 {
            z-index: 1;
            left: 694px;
            top: 465px;
            position: absolute;
            height: 70px;
            width: 261px;
        }
        .auto-style12 {
            z-index: 1;
            position: absolute;
            top: -1px;
            left: -3px;
            height: 769px;
            width: 1600px;
        }
        .auto-style13 {
            position: absolute;
            top: 130px;
            left: 753px;
            z-index: 1;
            width: 123px;
            height: 122px;
        }
        .auto-style15 {
            position: absolute;
            top: 367px;
            left: 737px;
            z-index: 1;
            width: 251px;
            height: 24px;
        }
        .auto-style16 {
            position: absolute;
            top: 370px;
            left: 1001px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 295px;
            left: 996px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 407px;
            left: 714px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 753px; width: 1584px; margin-top: 0px;">
    <form id="form1" runat="server">
        <div class="auto-style12" style="background-image: url('Background/3.jpg'); ">
            <asp:ImageButton ID="btnSignIn" runat="server" CssClass="auto-style10" ForeColor="White" ImageUrl="~/Icons/Sign In.png" OnClick="btnSignIn_Click" />
            <asp:TextBox ID="txtUsername" runat="server" BorderStyle="None" CssClass="auto-style8"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Size="X-Large" ForeColor="White" style="z-index: 1" Text="Username:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Font-Size="X-Large" ForeColor="White" Text="Password:"></asp:Label>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style13" ImageUrl="~/Icons/icons8-account-100.png" />
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="None" CssClass="auto-style15" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" CssClass="auto-style17" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="auto-style16" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="lblWrongCredentials" runat="server" CssClass="auto-style18" Font-Bold="False" Font-Size="Large" ForeColor="Red" Text="Wrong Username or password" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
