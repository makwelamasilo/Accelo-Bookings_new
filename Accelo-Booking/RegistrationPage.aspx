<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Accelo_Booking.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 775px;
            width: 1596px;
        }
        .auto-style2 {
            position: absolute;
            top: 331px;
            left: 552px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 234px;
            left: 555px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 283px;
            left: 553px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 421px;
            left: 549px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 378px;
            left: 551px;
            z-index: 1;
            height: 22px;
        }
        .auto-style7 {
            position: absolute;
            top: 472px;
            left: 549px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 376px;
            left: 814px;
            z-index: 1;
            width: 250px;
            height: 27px;
        }
        .auto-style9 {
            position: absolute;
            top: 232px;
            left: 815px;
            z-index: 1;
            width: 244px;
            height: 25px;
        }
        .auto-style10 {
            position: absolute;
            top: 280px;
            left: 817px;
            z-index: 1;
            width: 246px;
            height: 27px;
        }
        .auto-style11 {
            position: absolute;
            top: 327px;
            left: 816px;
            z-index: 1;
            width: 245px;
            height: 26px;
        }
        .auto-style12 {
            position: absolute;
            top: 421px;
            left: 815px;
            z-index: 1;
            width: 247px;
            height: 24px;
        }
        .auto-style13 {
            position: absolute;
            top: 473px;
            left: 814px;
            z-index: 1;
            width: 249px;
            height: 22px;
        }
        .auto-style14 {
            position: absolute;
            top: 548px;
            left: 638px;
            z-index: 1;
            width: 348px;
            height: 83px;
        }
        .auto-style16 {
            position: absolute;
            top: 236px;
            left: 1083px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 283px;
            left: 1084px;
            z-index: 1;
            bottom: 353px;
        }
        .auto-style18 {
            position: absolute;
            top: 331px;
            left: 1084px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 373px;
            left: 1084px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 54px;
            left: 732px;
            z-index: 1;
            width: 146px;
            height: 142px;
        }
    </style>
</head>
<body style="height: 776px; margin-left: 0px; margin-top: 1px; width: 1594px; margin-bottom: 3px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Background/background - Copy.jpg')">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Size="X-Large" ForeColor="White" Text="Last Name:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Size="X-Large" ForeColor="White" Text="Email:"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Font-Size="X-Large" ForeColor="White" Text="First Name:"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Font-Size="X-Large" ForeColor="White" Text="Password:"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Font-Size="X-Large" ForeColor="White" Text="Email comfirmation:"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Font-Size="X-Large" ForeColor="White" Text="Password Comfirmation:"></asp:Label>
            <asp:TextBox ID="txtFName" runat="server" BorderStyle="Outset" CssClass="auto-style9"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Outset" CssClass="auto-style11"></asp:TextBox>
            <asp:TextBox ID="txtEmailComfirmation" runat="server" BorderStyle="Outset" CssClass="auto-style8"></asp:TextBox>
            <asp:TextBox ID="txtLName" runat="server" BorderStyle="Outset" CssClass="auto-style10"></asp:TextBox>
            <input id="txtPassword" class="auto-style12" style="border-style: outset" type="password" /><input id="txtPasswordComfirmation" class="auto-style13" style="border-style: solid" type="password" /><asp:ImageButton ID="btnSignUp" runat="server" CssClass="auto-style14" ImageUrl="~/Icons/signup.png" />
            <asp:RequiredFieldValidator ID="FNameValidate" runat="server" ControlToValidate="txtFName" CssClass="auto-style16" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="emailComfirmValidate" runat="server" ControlToValidate="txtEmailComfirmation" CssClass="auto-style19" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="emailValidate" runat="server" ControlToValidate="txtEmail" CssClass="auto-style18" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="LNameValidate" runat="server" ControlToValidate="txtLName" CssClass="auto-style17" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style22" ImageUrl="~/Icons/icons8-registration-100.png" />
        </div>
    </form>
</body>
</html>
