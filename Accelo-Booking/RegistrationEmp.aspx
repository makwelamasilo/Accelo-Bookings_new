<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationEmp.aspx.cs" Inherits="Accelo_Booking.RegistrationEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            height: 801px;
            width: 1596px;
        }
        .auto-style4 {
            position: absolute;
            top: 320px;
            left: 550px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 366px;
            left: 550px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 277px;
            left: 551px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 449px;
            left: 549px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 408px;
            left: 548px;
            z-index: 1;
            height: 22px;
        }
        .auto-style7 {
            position: absolute;
            top: 494px;
            left: 549px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 279px;
            left: 820px;
            z-index: 1;
            width: 241px;
            height: 20px;
        }
        .auto-style11 {
            position: absolute;
            top: 371px;
            left: 820px;
            z-index: 1;
            width: 242px;
            height: 21px;
        }
        .auto-style8 {
            position: absolute;
            top: 411px;
            left: 819px;
            z-index: 1;
            width: 243px;
            height: 22px;
        }
        .auto-style10 {
            position: absolute;
            top: 323px;
            left: 822px;
            z-index: 1;
            width: 239px;
            height: 24px;
        }
        .auto-style14 {
            position: absolute;
            top: 612px;
            left: 658px;
            z-index: 1;
            width: 348px;
            height: 83px;
        }
        .auto-style16 {
            position: absolute;
            top: 277px;
            left: 1079px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 370px;
            left: 1081px;
            z-index: 1;
            height: 25px;
        }
        .auto-style17 {
            position: absolute;
            top: 323px;
            left: 1080px;
            z-index: 1;
            bottom: 250px;
        }
        .auto-style22 {
            position: absolute;
            top: 73px;
            left: 745px;
            z-index: 1;
            width: 146px;
            height: 142px;
        }
        .auto-style26 {
            position: absolute;
            top: 453px;
            left: 819px;
            z-index: 1;
            width: 244px;
            height: 21px;
        }
        .auto-style25 {
            position: absolute;
            top: 499px;
            left: 819px;
            z-index: 1;
            width: 244px;
            height: 21px;
        }
        .auto-style27 {
            position: absolute;
            top: 452px;
            left: 1081px;
            z-index: 1;
            height: 23px;
            width: 18px;
        }
        .auto-style28 {
            position: absolute;
            top: 501px;
            left: 1080px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 412px;
            left: 1082px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 538px;
            left: 549px;
            z-index: 1;
            height: 25px;
        }
        .auto-style31 {
            position: absolute;
            top: 541px;
            left: 817px;
            z-index: 1;
            width: 144px;
            height: 20px;
        }
        .auto-style32 {
            position: absolute;
            top: 540px;
            left: 968px;
            z-index: 1;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="auto-style1" style="background-image: url('Background/12.jpg')">
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
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="None" CssClass="auto-style26" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtConfirmPass" runat="server" BorderStyle="None" CssClass="auto-style25" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="auto-style27" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" CssClass="auto-style28" ErrorMessage="Password Mismatch" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailComfirmation" CssClass="auto-style29" ErrorMessage="Email Mismatch" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style30" Font-Size="X-Large" ForeColor="White" Text="Select role:"></asp:Label>
            <asp:DropDownList ID="Roles" runat="server" CssClass="auto-style31">
                <asp:ListItem>Chairperson</asp:ListItem>
                <asp:ListItem>Administrator</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Roles" CssClass="auto-style32" ErrorMessage="*" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </form>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
