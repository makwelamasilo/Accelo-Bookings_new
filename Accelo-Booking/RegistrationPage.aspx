<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Accelo_Booking.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 795px;
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
            width: 252px;
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
        .auto-style14 {
            position: absolute;
            top: 619px;
            left: 559px;
            z-index: 1;
            width: 249px;
            height: 61px;
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
        .auto-style22 {
            position: absolute;
            top: 33px;
            left: 743px;
            z-index: 1;
            width: 146px;
            height: 142px;
        }
        .auto-style23 {
            position: absolute;
            top: 561px;
            left: 553px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 557px;
            left: 818px;
            z-index: 1;
            width: 131px;
            height: 24px;
        }
        .auto-style25 {
            position: absolute;
            top: 472px;
            left: 817px;
            z-index: 1;
            width: 245px;
            height: 21px;
        }
        .auto-style26 {
            position: absolute;
            top: 425px;
            left: 815px;
            z-index: 1;
            width: 244px;
            height: 21px;
        }
        .auto-style27 {
            position: absolute;
            top: 425px;
            left: 1084px;
            z-index: 1;
            height: 23px;
            width: 18px;
        }
        .auto-style28 {
            position: absolute;
            top: 474px;
            left: 1080px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 380px;
            left: 1077px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 518px;
            left: 865px;
            z-index: 1;
            width: 147px;
            height: 19px;
        }
        .auto-style31 {
            position: absolute;
            top: 518px;
            left: 552px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 621px;
            left: 889px;
            z-index: 1;
            width: 249px;
            height: 61px;
        }
    </style>
</head>
<body style="height: 776px; margin-left: 0px; margin-top: 1px; width: 1594px; margin-bottom: 3px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Background/3.jpg')">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Size="X-Large" ForeColor="White" Text="Last Name:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Size="X-Large" ForeColor="White" Text="Email:"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Font-Size="X-Large" ForeColor="White" Text="First Name:"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Font-Size="X-Large" ForeColor="White" Text="Password:"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Font-Size="X-Large" ForeColor="White" Text="Email comfirmation:"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Font-Size="X-Large" ForeColor="White" Text="Password Comfirmation:"></asp:Label>
            <asp:TextBox ID="txtFName" runat="server" BorderStyle="None" CssClass="auto-style9"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" BorderStyle="None" CssClass="auto-style11" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="txtEmailComfirmation" runat="server" BorderStyle="None" CssClass="auto-style8" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="txtLName" runat="server" BorderStyle="None" CssClass="auto-style10"></asp:TextBox>
            <asp:ImageButton ID="btnSignUp" runat="server" CssClass="auto-style14" ImageUrl="~/Icons/signup.png" OnClick="btnSignUp_Click" />
            <asp:RequiredFieldValidator ID="FNameValidate" runat="server" ControlToValidate="txtFName" CssClass="auto-style16" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="emailValidate" runat="server" ControlToValidate="txtEmail" CssClass="auto-style18" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="LNameValidate" runat="server" ControlToValidate="txtLName" CssClass="auto-style17" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style22" ImageUrl="~/Icons/icons8-registration-100.png" />
            <asp:Label ID="Label7" runat="server" CssClass="auto-style23" ForeColor="White" Text="Do you wish to be a member of the club?"></asp:Label>
            <asp:CheckBox ID="clubMember" runat="server" CssClass="auto-style24" Font-Size="Large" ForeColor="White" />
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="None" CssClass="auto-style26" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtConfirmPass" runat="server" BorderStyle="None" CssClass="auto-style25" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="auto-style27" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" CssClass="auto-style28" ErrorMessage="Password Mismatch" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailComfirmation" CssClass="auto-style29" ErrorMessage="Email Mismatch" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style31" Font-Size="Large" ForeColor="White" Text="Please use this username for future logins:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" BorderStyle="None" CssClass="auto-style30" Enabled="False"></asp:TextBox>
            <asp:ImageButton ID="btnLogin" runat="server" CssClass="auto-style32" ImageUrl="~/Icons/Sign In.png" OnClick="btnLogin_Click" Visible="False" />
        </div>
    </form>
</body>
</html>
