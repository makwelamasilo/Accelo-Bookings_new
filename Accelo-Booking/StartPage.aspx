<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="Accelo_Booking.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 33px;
            left: 885px;
            z-index: 1;
            width: 473px;
            height: 474px;
        }
        .auto-style2 {
            height: 761px;
            width: 1582px;
            margin-top: 0px;
            margin-left: 0px;
            z-index: 1;
            position: absolute;
            top: 2px;
            left: 1px;
        }
        .auto-style3 {
            z-index: 1;
            left: 273px;
            top: 151px;
            position: absolute;
            height: 51px;
            width: 205px;
        }
        .auto-style4 {
            z-index: 1;
            left: 38px;
            top: 151px;
            position: absolute;
            height: 51px;
            width: 205px;
        }
        .auto-style5 {
            width: 808px;
            height: 404px;
            position: absolute;
            top: 289px;
            left: 34px;
            z-index: 1;
        }
        .auto-style16 {
            margin-left: 0px;
            margin-top: 2px;
        }
        .auto-style12 {
            position: absolute;
            top: 302px;
            left: 129px;
            z-index: 1;
            width: 170px;
            height: 35px;
        }
        .auto-style17 {
            position: absolute;
            top: 252px;
            left: 286px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 251px;
            left: 99px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 252px;
            left: 206px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 253px;
            left: 15px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 68px;
            left: 466px;
            z-index: 2;
            width: 334px;
            height: 167px;
        }
        .auto-style23 {
            position: absolute;
            top: 35px;
            left: 467px;
            z-index: 1;
        }
        .auto-style24 {
            width: 335px;
            height: 153px;
            position: absolute;
            top: 234px;
            left: 466px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('Background/squash.jpg'); background-repeat: inherit; " class="auto-style2">
            <asp:ImageButton ID="btnSignUp" runat="server" ImageUrl="~/Icons/signup.png" OnClick="btnSignUp_Click" CssClass="auto-style4" />
            <asp:ImageButton ID="btnSignIn" runat="server" ImageUrl="~/Icons/Sign In.png" OnClick="btnSignIn_Click" CssClass="auto-style3" />
            <asp:Image ID="Image1" runat="server" CssClass="auto-style1" ImageUrl="~/Background/player.png" />
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" BackImageUrl="~/Background/leather.jpg" BorderStyle="Solid" BorderColor="Black">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Calendar ID="DateOfBooking" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style16" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="221px" NextPrevFormat="FullMonth" OnDayRender="DateOfBooking_DayRender" Width="426px">
                    <DayHeaderStyle BackColor="Black" Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <DayStyle BackColor="#333333" ForeColor="White" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#999999" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333333" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
                    <TodayDayStyle BackColor="Black" ForeColor="Lime" />
                </asp:Calendar>
                <asp:ListBox ID="courtsAvailable" runat="server" CssClass="auto-style21" Visible="False">
                    <asp:ListItem>Court 1</asp:ListItem>
                    <asp:ListItem>Court 2</asp:ListItem>
                    <asp:ListItem>Court 3</asp:ListItem>
                    <asp:ListItem>Court 4</asp:ListItem>
                    <asp:ListItem>Court 5</asp:ListItem>
                    <asp:ListItem>Court 6</asp:ListItem>
                    <asp:ListItem>Court 7</asp:ListItem>
                    <asp:ListItem>Court 8</asp:ListItem>
                </asp:ListBox>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Font-Bold="True" ForeColor="#CCCCCC" Text="Start Time:"></asp:Label>
                <asp:DropDownList ID="StartTime" runat="server" BackColor="#333333" CssClass="auto-style18" ForeColor="White">
                    <asp:ListItem>06:00</asp:ListItem>
                    <asp:ListItem>06:30</asp:ListItem>
                    <asp:ListItem>07:00</asp:ListItem>
                    <asp:ListItem>07:30</asp:ListItem>
                    <asp:ListItem>08:00</asp:ListItem>
                    <asp:ListItem>08:30</asp:ListItem>
                    <asp:ListItem>09:00</asp:ListItem>
                    <asp:ListItem>09:30</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>10:30</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>11:30</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>12:30</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>13:30</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>14:30</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>15:30</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>16:30</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>17:30</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>18:30</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>19:30</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>20:30</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>21:30</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="EndTime" runat="server" BackColor="#333333" CssClass="auto-style17" ForeColor="White" style="z-index: 2">
                    <asp:ListItem>06:30</asp:ListItem>
                    <asp:ListItem>07:00</asp:ListItem>
                    <asp:ListItem>07:30</asp:ListItem>
                    <asp:ListItem>08:00</asp:ListItem>
                    <asp:ListItem>08:30</asp:ListItem>
                    <asp:ListItem>09:00</asp:ListItem>
                    <asp:ListItem>09:30</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>10:30</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>11:30</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>12:30</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>13:30</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>14:30</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>15:30</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>16:30</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>17:30</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                    <asp:ListItem>18:30</asp:ListItem>
                    <asp:ListItem>19:00</asp:ListItem>
                    <asp:ListItem>19:30</asp:ListItem>
                    <asp:ListItem>20:00</asp:ListItem>
                    <asp:ListItem>20:30</asp:ListItem>
                    <asp:ListItem>21:00</asp:ListItem>
                    <asp:ListItem>21:30</asp:ListItem>
                    <asp:ListItem>22:00</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnCheckCourtAvailability" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style12" Font-Bold="True" ForeColor="White" OnClick="btnCheckCourtAvailability_Click" Text="Check Available" />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style19" Font-Bold="True" ForeColor="#CCCCCC" Text="End Time:"></asp:Label>
                <asp:Label ID="lblAvailability" runat="server" CssClass="auto-style23" Font-Size="Large" ForeColor="#CCCCCC" Text="Label" Visible="False"></asp:Label>
                <asp:Panel ID="InfoPanel" runat="server" BackColor="White" CssClass="auto-style24" Visible="False">
                    <asp:Label ID="lblInfo" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
            </asp:Panel>
            <asp:Image ID="Image2" runat="server" Height="129px" ImageUrl="~/Icons/mittal.png" Width="320px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC" Text="CHECK FOR AVAILABLE COURTS:"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
