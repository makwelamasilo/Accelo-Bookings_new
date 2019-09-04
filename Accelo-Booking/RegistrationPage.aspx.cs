using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Helpers;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace Accelo_Booking
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        string username;
        string userType;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\source\\repos\\Accelo-Booking\\Accelo-Booking\\App_Data\\acceloDB.mdf;Integrated Security=True");
            userType = "Customer";
            GenerateUsername();
            txtUsername.Text = username.ToString();
        }

        protected void btnSignUp_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insertCustomers", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@First_name", txtFName.Text);
                cmd.Parameters.AddWithValue("@Last_name", txtLName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmailComfirmation.Text);
                cmd.Parameters.AddWithValue("@User_type", userType);
                cmd.Parameters.AddWithValue("@Password", txtConfirmPass.Text);
                cmd.ExecuteNonQuery();
                SendEmail();
                Response.Write("<script>alert('You have successfully registered');</script>");
                Response.Redirect("Login.aspx");
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

        public void GenerateUsername()
        {
            try
            {
                con.Open();
                String myquery = "SELECT USERNAME FROM Users";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count < 1)
                {
                    username = "C0001";
                }
                else
                {
                    String myquery1 = "SELECT COUNT(USERNAME) FROM Users";
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = myquery1;
                    cmd1.Connection = con;
                    SqlDataAdapter da1 = new SqlDataAdapter();
                    da1.SelectCommand = cmd1;
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1);
                    int count = Convert.ToInt32(cmd1.ExecuteScalar());
                    count++;
                    username = "C000" + count.ToString();
                }
            }
            catch (Exception er)
            {
                Response.Write("<script>alert('" + er.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        public void SendEmail()
        {
            MailMessage msg = new MailMessage();
            msg.To.Add(txtEmailComfirmation.Text);
            msg.From = new MailAddress("makwelamasilofrans@gmail.com");
            msg.Subject = "Registration confirmation";
            msg.Body = "Hey " + txtLName.Text + "\n\nYou have successfully registered for booking court at Mittal Court Club.\n\nKind Regards,";
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("makwelamasilofrans@gmail.com", "@Makwelamasilo");
            smtp.EnableSsl = true;
            smtp.Send(msg);
        }
    }
}