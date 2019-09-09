using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Accelo_Booking
{
    public partial class Login : System.Web.UI.Page
    {
        //SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            //con = new SqlConnection(@"Server=localhost;Database=accelo-booking_db;Uid=root;Pwd=@Makwela98;");
            ////con = new SqlConnection("accelobooking @den1.mysql3.gear.host:3306");
            //con.Open();

        }

        protected void btnSignIn_Click(object sender, ImageClickEventArgs e)
        {
            //con.Open();
            //con.Close();
            Response.Cookies["Username"].Value = txtUsername.Text;
            Response.Redirect("DashboardPage.aspx");
        }
    }
}