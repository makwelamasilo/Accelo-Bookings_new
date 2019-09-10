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
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\source\\repos\\Accelo-Booking\\Accelo-Booking\\App_Data\\acceloDB.mdf;Integrated Security=True");
        }

        protected void btnSignIn_Click(object sender, ImageClickEventArgs e)
        {
            lblWrongCredentials.Visible = true;
            string username = txtUsername.Text;
            Response.Cookies["Username"].Value = txtUsername.Text;
            string password = txtPassword.Text;
            try
            {
                con.Open();
                string query = "SELECT * FROM Users WHERE USERNAME='" + username + "' and PASSWORD='" + password + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Response.Redirect("DashboardPage.aspx");
                }
                else
                {
                    lblWrongCredentials.Text = "Incorrect username or password";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}