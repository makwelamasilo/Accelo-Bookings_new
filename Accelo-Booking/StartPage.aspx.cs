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
    public partial class StartPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\source\\repos\\Accelo-Booking\\Accelo-Booking\\App_Data\\acceloDB.mdf;Integrated Security=True");
//        static Int32 booking_id;
        static String start_date;
        static String end_date;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateOfBooking.SelectedDate = DateTime.Now.Date;
            }
            lblAvailability.Visible = true;
            lblAvailability.Text = DateOfBooking.TodaysDate.ToShortDateString();
        }

        protected void btnSignIn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnSignUp_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }

        protected void SliderTimer_Tick(object sender, EventArgs e)
        {

        }

        protected void btnCheckCourtAvailability_Click(object sender, EventArgs e)
        {
            lblAvailability.Visible = true;

            lblInfo.Visible = true;
            InfoPanel.Visible = true;
            int start = Convert.ToInt32(StartTime.SelectedItem.ToString().Substring(0, 2));
            int end = Convert.ToInt32(EndTime.SelectedItem.ToString().Substring(0, 2));
            start_date = DateOfBooking.SelectedDate.Year + "-" + DateOfBooking.SelectedDate.Month + "-" + DateOfBooking.SelectedDate.Day + " " + StartTime.Text + ":00";
            end_date = DateOfBooking.SelectedDate.Year + "-" + DateOfBooking.SelectedDate.Month + "-" + DateOfBooking.SelectedDate.Day + " " + EndTime.Text + ":00";

            findAvailableCourts();
            courtsAvailable.Visible = true;
            lblInfo.Text = "Dear Customer"+" \n\n"+"Above are the available courts for the time slots you specified. Please note that if you wish to make a booking, you have to be registered first.";
        }

        protected void DateOfBooking_DayRender(object sender, DayRenderEventArgs e)
        {

        }

        private void findAvailableCourts()
        {
            lblAvailability.Visible = true;
            courtsAvailable.Visible = true;
            try
            {
                con.Open();
                String myquery = "SELECT DISTINCT COURT_ID FROM Booking WHERE ((START_TIME between '" + start_date + "' and '" + end_date + "' ) or (END_TIME between '" + start_date + "' and '" + end_date + "' ))";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblAvailability.Text = "Available courts are Given Below";
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        courtsAvailable.Items.Remove(courtsAvailable.Items.FindByValue(dr["COURT_ID"].ToString()));
                    }
                    if (courtsAvailable.Items.Count == 0)
                    {
                        lblAvailability.Text = "No court Available to Book";
                    }
                }
                else
                {
                    lblAvailability.Text = "Available Tables are Given Below";
                }
                Response.Write("<script>alert('There are available');</script>");
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('" + e.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}