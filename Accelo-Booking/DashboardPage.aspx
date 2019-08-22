<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardPage.aspx.cs" Inherits="Accelo_Booking.DashboardPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 762px;
            width: 1587px;
        }
        .auto-style2 {
            width: 1361px;
            height: 48px;
            position: absolute;
            top: 59px;
            left: 237px;
            z-index: 1;
        }
        .auto-style3 {
            width: 1359px;
            height: 62px;
            position: absolute;
            top: -2px;
            left: 239px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 16px;
            left: 24px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 233px;
            left: 16px;
            z-index: 1;
            width: 213px;
            height: 70px;
        }
        .auto-style6 {
            position: absolute;
            top: 321px;
            left: 15px;
            z-index: 1;
            width: 213px;
            height: 70px;
        }
        .auto-style8 {
            position: absolute;
            top: 145px;
            left: 15px;
            z-index: 1;
            width: 213px;
            height: 70px;
        }
        .auto-style9 {
            margin-left: 0px;
            width: 241px;
            height: 787px;
            position: absolute;
            top: 0px;
            left: -4px;
            z-index: 1;
        }
        .auto-style10 {
            width: 1356px;
            height: 678px;
            position: absolute;
            top: 110px;
            left: 240px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 760px; width: 1589px; margin-top: 0px;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Background/12.jpg" CssClass="auto-style9">
                <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/Background/12.jpg" CssClass="auto-style2">
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/Background/images.jpg" CssClass="auto-style3" Font-Size="XX-Large">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Names="Alien Encounters" ForeColor="White" Text="ACCELO-BOOKING"></asp:Label>
                </asp:Panel>
                <asp:ImageButton ID="btnMakeBooking" runat="server" CssClass="auto-style5" ImageUrl="~/Icons/MakeBooking.png" OnClick="btnMakeBooking_Click" style="z-index: 2" />
                <asp:ImageButton ID="btnCancelBooking" runat="server" CssClass="auto-style6" ImageUrl="~/Icons/cancelBooking.png" style="z-index: 2" />
                <asp:ImageButton ID="btnOverview" runat="server" CssClass="auto-style8" ImageUrl="~/Icons/btnOverview.png" OnClick="btnOverview_Click" />
            </asp:Panel>
            <br />
            \<br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel4" runat="server" BackImageUrl="~/Background/images.jpg" CssClass="auto-style10">
            </asp:Panel>
        </div>
    </form>
</body>
</html>
