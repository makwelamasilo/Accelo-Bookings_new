<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Booking.ascx.cs" Inherits="Accelo_Booking.Booking" %>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<p>
    <asp:Calendar ID="DateOfBooking" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Outset" BorderWidth="5px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="217px" NextPrevFormat="FullMonth" Width="400px">
        <DayHeaderStyle BackColor="Black" Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <DayStyle BackColor="#333333" ForeColor="White" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="#333333" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
        <TodayDayStyle BackColor="Black" ForeColor="Lime" />
    </asp:Calendar>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Start Time:"></asp:Label>
&nbsp;
    <asp:DropDownList ID="StartTime" runat="server" BackColor="#333333" ForeColor="White">
        <asp:ListItem>--:--</asp:ListItem>
        <asp:ListItem>06:00 AM</asp:ListItem>
        <asp:ListItem>06:30 AM</asp:ListItem>
        <asp:ListItem>07:00 AM</asp:ListItem>
        <asp:ListItem>07:30 AM</asp:ListItem>
        <asp:ListItem>08:00 AM</asp:ListItem>
        <asp:ListItem>08:30 AM</asp:ListItem>
        <asp:ListItem>09:00 AM</asp:ListItem>
        <asp:ListItem>09:30 AM</asp:ListItem>
        <asp:ListItem>10:00 AM</asp:ListItem>
        <asp:ListItem>10:30 AM</asp:ListItem>
        <asp:ListItem>11:00 AM</asp:ListItem>
        <asp:ListItem>11:30 AM</asp:ListItem>
        <asp:ListItem>12:00 PM</asp:ListItem>
        <asp:ListItem>12:30 PM</asp:ListItem>
        <asp:ListItem>01:00 PM</asp:ListItem>
        <asp:ListItem>01:30 PM</asp:ListItem>
        <asp:ListItem>02:00 PM</asp:ListItem>
        <asp:ListItem>02:30 PM</asp:ListItem>
        <asp:ListItem>03:00 PM</asp:ListItem>
        <asp:ListItem>03:30 PM</asp:ListItem>
        <asp:ListItem>04:00 PM</asp:ListItem>
        <asp:ListItem>04:30 PM</asp:ListItem>
        <asp:ListItem>05:00 PM</asp:ListItem>
        <asp:ListItem>05:30 PM</asp:ListItem>
        <asp:ListItem>06:00 PM</asp:ListItem>
        <asp:ListItem>06:30 PM</asp:ListItem>
        <asp:ListItem>07:00 PM</asp:ListItem>
        <asp:ListItem>07:30 PM</asp:ListItem>
        <asp:ListItem>08:00 PM</asp:ListItem>
        <asp:ListItem>08:30 PM</asp:ListItem>
        <asp:ListItem>09:00 PM</asp:ListItem>
        <asp:ListItem>09:30 PM</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="End Time:"></asp:Label>
&nbsp;<asp:DropDownList ID="StartTime0" runat="server" BackColor="#333333" ForeColor="White">
        <asp:ListItem>--:--</asp:ListItem>
        <asp:ListItem>06:30 AM</asp:ListItem>
        <asp:ListItem>07:00 AM</asp:ListItem>
        <asp:ListItem>07:30 AM</asp:ListItem>
        <asp:ListItem>08:00 AM</asp:ListItem>
        <asp:ListItem>08:30 AM</asp:ListItem>
        <asp:ListItem>09:00 AM</asp:ListItem>
        <asp:ListItem>09:30 AM</asp:ListItem>
        <asp:ListItem>10:00 AM</asp:ListItem>
        <asp:ListItem>10:30 AM</asp:ListItem>
        <asp:ListItem>11:00 AM</asp:ListItem>
        <asp:ListItem>11:30 AM</asp:ListItem>
        <asp:ListItem>12:00 PM</asp:ListItem>
        <asp:ListItem>12:30 PM</asp:ListItem>
        <asp:ListItem>01:00 PM</asp:ListItem>
        <asp:ListItem>01:30 PM</asp:ListItem>
        <asp:ListItem>02:00 PM</asp:ListItem>
        <asp:ListItem>02:30 PM</asp:ListItem>
        <asp:ListItem>03:00 PM</asp:ListItem>
        <asp:ListItem>03:30 PM</asp:ListItem>
        <asp:ListItem>04:00 PM</asp:ListItem>
        <asp:ListItem>04:30 PM</asp:ListItem>
        <asp:ListItem>05:00 PM</asp:ListItem>
        <asp:ListItem>05:30 PM</asp:ListItem>
        <asp:ListItem>06:00 PM</asp:ListItem>
        <asp:ListItem>06:30 PM</asp:ListItem>
        <asp:ListItem>07:00 PM</asp:ListItem>
        <asp:ListItem>07:30 PM</asp:ListItem>
        <asp:ListItem>08:00 PM</asp:ListItem>
        <asp:ListItem>08:30 PM</asp:ListItem>
        <asp:ListItem>09:00 PM</asp:ListItem>
        <asp:ListItem>09:30 PM</asp:ListItem>
        <asp:ListItem>10:00 PM</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
<asp:Button ID="btnCheckCourtAvailability" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Text="Check Available" />
<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Text="Select Court:"></asp:Label>
<p>
    <asp:RadioButtonList ID="AvailableCourts" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" ForeColor="White" Width="399px">
        <asp:ListItem>Court 1</asp:ListItem>
        <asp:ListItem>Court 2</asp:ListItem>
        <asp:ListItem>Court 3</asp:ListItem>
        <asp:ListItem>Court 4</asp:ListItem>
        <asp:ListItem>Court 5</asp:ListItem>
        <asp:ListItem>Court 6</asp:ListItem>
        <asp:ListItem>Court 7</asp:ListItem>
        <asp:ListItem>Court 8</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="btnBook" runat="server" BackColor="#333333" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" OnClick="btnBook_Click1" Text="Book" Width="87px" />
</p>
<asp:ListBox ID="Feedback" runat="server" Width="397px"></asp:ListBox>


