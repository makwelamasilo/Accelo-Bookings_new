using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accelo_Booking
{
    public partial class DashboardPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOverview_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void btnMakeBooking_Click(object sender, ImageClickEventArgs e)
        {
            Control booking = Page.LoadControl("Booking.ascx");
            Panel4.Controls.Add(booking);
        }
    }
}