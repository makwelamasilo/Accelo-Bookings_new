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
            width: 1357px;
            height: 48px;
            position: absolute;
            top: 59px;
            left: 241px;
            z-index: 1;
        }
        .auto-style3 {
            width: 1357px;
            height: 62px;
            position: absolute;
            top: -2px;
            left: 241px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 20px;
            left: 27px;
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
            width: 1353px;
            height: 674px;
            position: absolute;
            top: 114px;
            left: 243px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 306px;
            left: 129px;
            z-index: 1;
            width: 160px;
            height: 35px;
        }
        .auto-style13 {
            position: absolute;
            top: 356px;
            left: 28px;
            z-index: 1;
        }
        .auto-style15 {
            width: 422px;
            height: 210px;
            position: absolute;
            top: 384px;
            left: 21px;
            z-index: 1;
        }
        .auto-style16 {
            margin-left: 0px;
            margin-top: 2px;
        }
        .auto-style20 {
            position: absolute;
            top: 606px;
            left: 186px;
            z-index: 1;
            width: 98px;
            height: 32px;
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
        .auto-style24 {
            position: absolute;
            top: 407px;
            left: 15px;
            z-index: 1;
            width: 217px;
            height: 70px;
        }
        .auto-style25 {
            position: absolute;
            top: 17px;
            left: 1486px;
            z-index: 1;
            width: 87px;
        }
        .auto-style26 {
            position: absolute;
            top: 12px;
            left: 1206px;
            z-index: 1;
            width: 40px;
            height: 38px;
        }
    </style>
</head>
<body style="height: 760px; width: 1589px; margin-top: 0px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-color: #000000">
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Background/12.jpg" CssClass="auto-style9">
                <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/Background/12.jpg" CssClass="auto-style2">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style21" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Welcome:"></asp:Label>
                    <asp:Label ID="lblUsername" runat="server" CssClass="auto-style22" ForeColor="White" Text="Label"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/Background/3.jpg" CssClass="auto-style3" Font-Size="XX-Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Names="Alien Encounters" ForeColor="White" Text="ACCELO-BOOKING"></asp:Label>
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style26" ImageUrl="~/Icons/Deafult-Profile-Pitcher.png" />
                </asp:Panel>
                <asp:ImageButton ID="btnMakeBooking" runat="server" CssClass="auto-style5" ImageUrl="~/Icons/MakeBooking.png" OnClick="btnMakeBooking_Click" style="z-index: 2" />
                <asp:ImageButton ID="btnCancelBooking" runat="server" CssClass="auto-style6" ImageUrl="~/Icons/btnManageBookings.png" OnClick="btnCancelBooking_Click" style="z-index: 2" />
                <asp:ImageButton ID="btnOverview" runat="server" CssClass="auto-style8" ImageUrl="~/Icons/btnOverview.png" OnClick="btnOverview_Click" />
                <asp:ImageButton ID="btnRegisterEmp" runat="server" CssClass="auto-style24" ImageUrl="~/Icons/btnRegister.png" OnClick="btnRegisterEmp_Click" Visible="False" />
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style25" Font-Bold="True" Font-Size="Large" ForeColor="White" NavigateUrl="~/Login.aspx">Log out</asp:HyperLink>
            </asp:Panel>
            <br />
            \<br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel4" runat="server" BackImageUrl="~/Background/3.jpg" CssClass="auto-style10">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:Calendar ID="DateOfBooking" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style16" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="221px" NextPrevFormat="FullMonth" OnDayRender="DateOfBooking_DayRender" Width="426px">
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
                        <br />
                        <asp:Label ID="lblAvailability" runat="server" CssClass="auto-style13" Font-Bold="True" ForeColor="White" Text="Select Court:" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="btnCheckCourtAvailability" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style12" Font-Bold="True" ForeColor="White" OnClick="btnCheckCourtAvailability_Click" Text="Check Available" />
                        <asp:RadioButtonList ID="AvailableCourts" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style15" ForeColor="White" Visible="False">
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
                        <br />
                        <br />
                        <asp:Button ID="btnBook" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style20" Font-Bold="True" ForeColor="White" OnClick="btnBook_Click" Text="BOOK" Visible="False" />
                        <br />
                        <br />
                    </asp:View>
                    <br />
                    <br />
                    <asp:View ID="View2" runat="server">
                        <asp:Panel ID="Panel5" runat="server">
                            <asp:GridView ID="deleteView" runat="server" AutoGenerateEditButton="True" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
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
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="Black" ForeColor="White" HorizontalAlign="Right" />
                                <RowStyle BackColor="#333333" ForeColor="White" />
                                <SelectedRowStyle BackColor="#00CC00" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                            <br />
                            <br />
                            <asp:DropDownList ID="cmbDeleteBooking" runat="server">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:Button ID="btnCancel" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" ForeColor="White" OnClick="btnCancel_Click1" Text="Cancel Booking" />
                            <br />
                        </asp:Panel>
                    </asp:View>
                    <br />
                    <asp:View ID="View3" runat="server">
                        <asp:GridView ID="viewBookings" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                            <Columns>
                                <asp:TemplateField></asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" />
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#333333" ForeColor="White" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
                        <br />
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Select the booking to check in below:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="cmbBookingId" runat="server" BackColor="#333333" ForeColor="White">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Button ID="btnCheckIn" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" OnClick="btnCheckIn_Click" Text="CHECKED IN" />
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Alien Encounters" Font-Size="XX-Large" ForeColor="#CCCCCC" Text="WELCOME TO THE COURTS BOOKING SYSTEM FOR MITTAL SQUASH COURTS CLUB"></asp:Label>
                    </asp:View>
                </asp:MultiView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
