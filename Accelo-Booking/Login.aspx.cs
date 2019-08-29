using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accelo_Booking
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Cookies["Username"].Value = txtUsername.Text;
            Response.Redirect("DashboardPage.aspx");
        }
    }
}