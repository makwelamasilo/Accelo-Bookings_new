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
        .auto-style12 {
            position: absolute;
            top: 302px;
            left: 133px;
            z-index: 1;
            width: 160px;
            height: 35px;
        }
        .auto-style13 {
            position: absolute;
            top: 341px;
            left: 29px;
            z-index: 1;
        }
        .auto-style15 {
            width: 422px;
            height: 210px;
            position: absolute;
            top: 370px;
            left: 19px;
            z-index: 1;
        }
        .auto-style16 {
            margin-left: 0px;
            margin-top: 2px;
        }
        .auto-style20 {
            position: absolute;
            top: 592px;
            left: 185px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 15px;
            left: 20px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 16px;
            left: 104px;
            z-index: 1;
        }
        .auto-style23 {
            width: 340px;
            height: 371px;
            position: absolute;
            top: 80px;
            left: 562px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 760px; width: 1589px; margin-top: 0px;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Background/12.jpg" CssClass="auto-style9">
                <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/Background/12.jpg" CssClass="auto-style2">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style21" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Welcome:"></asp:Label>
                    <asp:Label ID="lblUsername" runat="server" CssClass="auto-style22" ForeColor="White" Text="Label"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/Background/images.jpg" CssClass="auto-style3" Font-Size="XX-Large">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Names="Alien Encounters" ForeColor="White" Text="ACCELO-BOOKING"></asp:Label>
                </asp:Panel>
                <asp:ImageButton ID="btnMakeBooking" runat="server" CssClass="auto-style5" ImageUrl="~/Icons/MakeBooking.png" OnClick="btnMakeBooking_Click" style="z-index: 2" />
                <asp:ImageButton ID="btnCancelBooking" runat="server" CssClass="auto-style6" ImageUrl="~/Icons/cancelBooking.png" OnClick="btnCancelBooking_Click" style="z-index: 2" />
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
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:Calendar ID="DateOfBooking" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="221px" NextPrevFormat="FullMonth" Width="426px" CssClass="auto-style16">
                            <DayHeaderStyle BackColor="Black" Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <DayStyle BackColor="#333333" ForeColor="White" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#999999" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333333" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
                            <TodayDayStyle BackColor="Black" ForeColor="Lime" />
                        </asp:Calendar>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Text="Start Time:"></asp:Label>
                        <asp:DropDownList ID="StartTime" runat="server" BackColor="#333333" ForeColor="White">
                            <asp:ListItem>--:--</asp:ListItem>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="End Time:"></asp:Label>
                        <asp:DropDownList ID="EndTime" runat="server" BackColor="#333333" ForeColor="White">
                            <asp:ListItem>--:--</asp:ListItem>
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
                        <asp:Panel ID="Panel6" runat="server" BackColor="#333333" CssClass="auto-style23">
                            <asp:Label ID="Feedback" runat="server" Text="Label"></asp:Label>
                        </asp:Panel>
                        <br />
                        <asp:Label ID="lblAvailability" runat="server" CssClass="auto-style13" Font-Bold="True" ForeColor="White" Text="Select Court:" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="btnCheckCourtAvailability" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" OnClick="btnCheckCourtAvailability_Click" Text="Check Available" CssClass="auto-style12" />
                        <asp:RadioButtonList ID="AvailableCourts" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" ForeColor="White" CssClass="auto-style15" Visible="False">
                            <asp:ListItem>Court 1</asp:ListItem>
                            <asp:ListItem>Court 2</asp:ListItem>
                            <asp:ListItem>Court 3</asp:ListItem>
                            <asp:ListItem>Court 4</asp:ListItem>
                            <asp:ListItem>Court 5</asp:ListItem>
                            <asp:ListItem>Court 6</asp:ListItem>
                            <asp:ListItem>Court 7</asp:ListItem>
                            <asp:ListItem>Court 8</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnBook" runat="server" CssClass="auto-style20" OnClick="btnBook_Click" Text="Button" />
                        <br />
                        <br />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:Panel ID="Panel5" runat="server">
                            <asp:GridView ID="GridView2" runat="server" ForeColor="Black" BackImageUrl="~/Background/173782.jpg" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="checkSelect" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EmptyDataTemplate>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <br />
                            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click1" Text="Cancel Booking" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" ForeColor="White" />
                            <br />
                        </asp:Panel>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                    </asp:View>
                </asp:MultiView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
