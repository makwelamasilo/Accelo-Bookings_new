<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpRegistration.aspx.cs" Inherits="Accelo_Booking.EmpRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 816px;
            width: 1607px;
            position: absolute;
            top: 0px;
            left: -1px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 293px;
            left: 552px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 335px;
            left: 552px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 249px;
            left: 552px;
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
            top: 466px;
            left: 549px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 660px;
            left: 564px;
            z-index: 1;
            width: 234px;
            height: 55px;
        }
        .auto-style22 {
            position: absolute;
            top: 33px;
            left: 743px;
            z-index: 1;
            width: 146px;
            height: 142px;
        }
        .auto-style31 {
            position: absolute;
            top: 600px;
            left: 548px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 294px;
            left: 866px;
            z-index: 1;
            width: 203px;
        }
        .auto-style33 {
            position: absolute;
            top: 383px;
            left: 868px;
            z-index: 1;
            width: 203px;
        }
        .auto-style34 {
            position: absolute;
            top: 251px;
            left: 865px;
            z-index: 1;
            width: 205px;
        }
        .auto-style35 {
            position: absolute;
            top: 336px;
            left: 867px;
            z-index: 1;
            width: 204px;
        }
        .auto-style36 {
            position: absolute;
            top: 469px;
            left: 869px;
            z-index: 1;
            width: 202px;
        }
        .auto-style38 {
            position: absolute;
            top: 425px;
            left: 868px;
            z-index: 1;
            width: 203px;
        }
        .auto-style39 {
            position: absolute;
            top: 514px;
            left: 868px;
            z-index: 1;
            width: 121px;
            height: 21px;
        }
        .auto-style40 {
            position: absolute;
            top: 555px;
            left: 869px;
            z-index: 1;
            width: 116px;
            height: 15px;
        }
        .auto-style41 {
            position: absolute;
            top: 550px;
            left: 551px;
            z-index: 1;
        }
        .auto-style42 {
            position: absolute;
            top: 510px;
            left: 551px;
            z-index: 1;
        }
        .auto-style43 {
            position: absolute;
            top: 599px;
            left: 870px;
            z-index: 1;
        }
        .auto-style44 {
            position: absolute;
            top: 427px;
            left: 1090px;
            z-index: 1;
            width: 12px;
        }
        .auto-style45 {
            position: absolute;
            top: 249px;
            left: 1086px;
            z-index: 1;
        }
        .auto-style46 {
            position: absolute;
            top: 516px;
            left: 1000px;
            z-index: 1;
            width: 12px;
        }
        .auto-style47 {
            position: absolute;
            top: 338px;
            left: 1089px;
            z-index: 1;
            width: 20px;
        }
        .auto-style48 {
            position: absolute;
            top: 293px;
            left: 1088px;
            z-index: 1;
            width: 18px;
        }
        .auto-style49 {
            position: absolute;
            top: 469px;
            left: 1089px;
            z-index: 1;
        }
        .auto-style50 {
            position: absolute;
            top: 558px;
            left: 994px;
            z-index: 1;
        }
        .auto-style51 {
            position: absolute;
            top: 384px;
            left: 1090px;
            z-index: 1;
        }
        .auto-style52 {
            position: absolute;
            top: 660px;
            left: 864px;
            z-index: 1;
            width: 234px;
            height: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Background/3.jpg')">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Size="X-Large" ForeColor="White" Text="Last Name:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Size="X-Large" ForeColor="White" Text="Email:"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Font-Size="X-Large" ForeColor="White" Text="First Name:"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Font-Size="X-Large" ForeColor="White" Text="Password:"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Font-Size="X-Large" ForeColor="White" Text="Email comfirmation:"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Font-Size="X-Large" ForeColor="White" Text="Password Comfirmation:"></asp:Label>
            <asp:ImageButton ID="btnSignUp" runat="server" CssClass="auto-style14" ImageUrl="~/Icons/signup.png" OnClick="btnSignUp_Click" />
            <asp:Image ID="Image1" runat="server" CssClass="auto-style22" ImageUrl="~/Icons/icons8-registration-100.png" />
            <asp:Label ID="Label8" runat="server" CssClass="auto-style31" Font-Size="Large" ForeColor="White" Text="Please use this username for future logins:"></asp:Label>
            <asp:TextBox ID="txtFName" runat="server" BorderStyle="None" CssClass="auto-style34"></asp:TextBox>
            <asp:TextBox ID="txtLName" runat="server" BorderStyle="None" CssClass="auto-style32"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" BorderStyle="None" CssClass="auto-style35"></asp:TextBox>
            <asp:TextBox ID="txtConfirmEmail" runat="server" BorderStyle="None" CssClass="auto-style33"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="None" CssClass="auto-style38"></asp:TextBox>
            <asp:TextBox ID="txtConfirmPass" runat="server" BorderStyle="None" CssClass="auto-style36"></asp:TextBox>
            <asp:DropDownList ID="Role" runat="server" CssClass="auto-style39">
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>Chairperson</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="Shift" runat="server" CssClass="auto-style40">
                <asp:ListItem>Day</asp:ListItem>
                <asp:ListItem>Night</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style41" Font-Size="X-Large" ForeColor="White" Text="Shift:"></asp:Label>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style42" Font-Size="X-Large" ForeColor="White" Text="Employee Role:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" BorderStyle="None" CssClass="auto-style43" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLName" CssClass="auto-style48" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFName" CssClass="auto-style45" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" CssClass="auto-style44" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" CssClass="auto-style47" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Role" CssClass="auto-style46" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Shift" CssClass="auto-style50" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" CssClass="auto-style51" ErrorMessage="Email mismatch" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" CssClass="auto-style49" ErrorMessage="Password mismatch" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            <asp:ImageButton ID="btnLogin" runat="server" CssClass="auto-style52" ImageUrl="~/Icons/Sign In.png" OnClick="btnLogin_Click" Visible="False" />
        </div>
    </form>
</body>
</html>
