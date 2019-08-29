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
        SqlConnection con;
        static Int32 booking_id;
        static String start_date;
        static String end_date;
        protected void Page_Load(object sender, EventArgs e)
        {
            //con = new SqlConnection("Data Source=localhost;Initial Catalog=accelo-booking_db;Integrated Security=True;");
            //con = new SqlConnection("server=den1.mysql5.gear.host;uid=accelobooking;pwd=Tt0v4g3c9~~m;database=accelobooking");
            //con.Open();
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\source\\repos\\Accelo-Booking\\Accelo-Booking\\App_Data\\acceloDB.mdf;Integrated Security=True");
            if (!IsPostBack)
            {
                DateOfBooking.SelectedDate = DateTime.Now.Date;
            }
        }

        protected void btnOverview_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void btnMakeBooking_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnCancelBooking_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnCheckCourtAvailability_Click(object sender, EventArgs e)
        {
            start_date = DateOfBooking.SelectedDate.Year + "-" + DateOfBooking.SelectedDate.Month + "-" + DateOfBooking.SelectedDate.Day + " " + StartTime.Text + ":00";
            end_date = DateOfBooking.SelectedDate.Year + "-" + DateOfBooking.SelectedDate.Month + "-" + DateOfBooking.SelectedDate.Day + " " + EndTime.Text + ":00";
            findAvailableCourts();
            //AvailableCourts.Visible = true;
        }

        protected void btnBook_Click1(object sender, EventArgs e)
        {
            Feedback.Visible = true;
            try
            {

                con.Open();
                string username = Request.Cookies["Username"].Value;
                GenerateBookingID();
                String addBooking = "INSERT INTO Booking VALUES(" + booking_id + ",'" + AvailableCourts.SelectedItem.Text + "','" + username.ToString() + ",'" + start_date.ToString() + "','" + end_date.ToString() + "')";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = addBooking;
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Booking successfully made!!!');</script>");
                
                Feedback.Items.Add("Hey " + username + ",\n\n" + "This is to comfirm that you have successfully booked " + AvailableCourts.Text + "For " + DateOfBooking.SelectedDate.ToLongDateString() + "From " + StartTime.Text + "to "+ EndTime+". Your booking reference is " + booking_id.ToString());
                //con.Close();
            }
            catch (Exception err)
            {
                Response.Write("<script>alert('" + err.Message + "');</script>");
            }
            finally
            {
                con.Close();
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
                    //RadioButtonList1.Items.Clear();
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
            //con.Close();
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
                    String myquery1 = "SELECT MAX(booking_id) FROM Booking";
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
            //Response.Write("<script>alert('Generation Done');</script>");
            //con.Close();
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

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click1(object sender, EventArgs e)
        {

        }
    }
}