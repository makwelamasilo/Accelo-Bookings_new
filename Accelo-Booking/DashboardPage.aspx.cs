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
    public partial class DashboardPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\source\\repos\\Accelo-Booking\\Accelo-Booking\\App_Data\\acceloDB.mdf;Integrated Security=True");
        static Int32 booking_id;
        static String start_date;
        static String end_date;
        static String username;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateOfBooking.SelectedDate = DateTime.Now.Date;
            }
            username = Request.Cookies["Username"].Value;
            if(username.Substring(0,1) == "A" || username.Substring(0, 1) == "B")
            {
                btnRegisterEmp.Visible = true;
            }
            GenerateBookingID();
            lblUsername.Text = username.ToString();

        }

        protected void btnOverview_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            viewTodaysBookings();
        }

        protected void btnMakeBooking_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnCancelBooking_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            con.Open();
            String myquery = "SELECT * FROM Booking WHERE USERNAME = '"+ username.ToString() +"'";
            SqlCommand cmd = new SqlCommand(myquery,con);

            SqlDataReader reader = cmd.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            con.Close();
        }

        protected void btnCheckCourtAvailability_Click(object sender, EventArgs e)
        {
            lblAvailability.Visible = true;
            int start = Convert.ToInt32(StartTime.SelectedItem.ToString().Substring(0,2));
            int end = Convert.ToInt32(EndTime.SelectedItem.ToString().Substring(0, 2));
            start_date = DateOfBooking.SelectedDate.Year + "-" + DateOfBooking.SelectedDate.Month + "-" + DateOfBooking.SelectedDate.Day + " " + StartTime.Text + ":00";
            end_date = DateOfBooking.SelectedDate.Year + "-" + DateOfBooking.SelectedDate.Month + "-" + DateOfBooking.SelectedDate.Day + " " + EndTime.Text + ":00";

            if (username.Substring(0,1) == "C")
            {
                if(start >= 17 & start <= 20 & end >= 17 && end <=20)
                {
                    if ((end - start) < 2 && (end - start) >= 0)
                    {
                        findAvailableCourts();
                        AvailableCourts.Visible = true;
                    }
                    else
                    {
                        Response.Write("<script>alert('You are only allowed to make a maximum of 3 session/slots during peak hours');</script>");
                    }
                }
                else
                {
                    findAvailableCourts();
                    AvailableCourts.Visible = true;
                }
            }
            else
            {
                findAvailableCourts();
                AvailableCourts.Visible = true;
            }
        }

        private void findAvailableCourts()
        {
            lblAvailability.Visible = true;
            AvailableCourts.Visible = true;
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
                        AvailableCourts.Items.Remove(AvailableCourts.Items.FindByValue(dr["COURT_ID"].ToString()));
                    }
                    if (AvailableCourts.Items.Count == 0)
                    {
                        lblAvailability.Text = "No court Available to Book";
                    }
                }
                else
                {
                    lblAvailability.Text = "Available Tables are Given Below";
                }
                Response.Write("<script>alert('It works');</script>");
            }
            catch(Exception e)
            {
                Response.Write("<script>alert('"+e.Message+"');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        public void GenerateBookingID()
        {
            try
            {
                con.Open();
                String myquery = "SELECT BOOKING_ID FROM Booking";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count < 1)
                {
                    booking_id = 1;
                }
                else
                {
                    String myquery1 = "SELECT MAX(BOOKING_ID) FROM Booking";
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = myquery1;
                    cmd1.Connection = con;
                    SqlDataAdapter da1 = new SqlDataAdapter();
                    da1.SelectCommand = cmd1;
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1);
                    booking_id = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
                    booking_id = booking_id + 1;
                }
            }
            catch(Exception er)
            {
                Response.Write("<script>alert('" + er.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("MakeBooking", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Booking_ID", booking_id);
                cmd.Parameters.AddWithValue("@Court_ID", AvailableCourts.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Start_time", start_date);
                cmd.Parameters.AddWithValue("@End_time", end_date);
                cmd.ExecuteNonQuery();
                //Feedback.Visible = true;
                //string feedback = ("Hey " + username + ",\n\n" + "This is to comfirm that you have successfully booked " + AvailableCourts.Text + "For " + DateOfBooking.SelectedDate.ToLongDateString() + "From " + StartTime.Text + "to " + EndTime + ". Your booking reference is " + booking_id.ToString()).ToString();
                Response.Write("<script>alert('Your booking was successful');</script>");
                con.Close();
            }
            catch(Exception err)
            {
                Response.Write("<script>alert('" + err.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnCancel_Click1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView2.Rows)
            {
                CheckBox box = (row.Cells[0].FindControl("checkSelect") as CheckBox);
                int booking_ID = Convert.ToInt32(row.Cells[1].Text);
                if(box.Checked)
                {
                    con.Open();
                    string query = "DELETE FROM Booking WHERE BOOKING_ID=" + booking_ID;
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                GridView2.DataBind();
            }
        }

        protected void DateOfBooking_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Now.AddDays(14))
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void btnRegisterEmp_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EmpRegistration.aspx");
        }

        public void viewTodaysBookings()
        {
            string today = DateOfBooking.TodaysDate.ToShortDateString();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("showTodaysBookings", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TodaysDate", today);

                SqlDataReader reader = cmd.ExecuteReader();
                viewBookings.DataSource = reader;
                viewBookings.DataBind();
                con.Close();
            }
            catch(Exception e)
            {
                Response.Write("<script>alert('" + e.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnCheckIn_Click(object sender, EventArgs e)
        {

        }
    }
}