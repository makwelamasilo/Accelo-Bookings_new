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
    public partial class EmpRegistration : System.Web.UI.Page
    {
        SqlConnection con;
        string username;
        string userType = "Employee";
        string empType;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\User\\source\\repos\\Accelo-Booking\\Accelo-Booking\\App_Data\\acceloDB.mdf;Integrated Security=True");
            
        }

        protected void btnSignUp_Click(object sender, ImageClickEventArgs e)
        {
            GenerateUsername();
            txtUsername.Text = username.ToString();
            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("insertEmployee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@First_name", txtFName.Text);
                cmd.Parameters.AddWithValue("@Last_name", txtLName.Text);
                cmd.Parameters.AddWithValue("@Email", txtConfirmEmail.Text);
                cmd.Parameters.AddWithValue("@User_type", userType);
                cmd.Parameters.AddWithValue("@Password", txtConfirmPass.Text);
                cmd.Parameters.AddWithValue("@Employee_type", Role.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Shift", Shift.SelectedValue.ToString());
                cmd.ExecuteNonQuery();
                
                //SendEmail();

            }
            catch (Exception err)
            {
                Response.Write("<script>alert('" + err.Message + "');</script>");
            }
            finally
            {
                Response.Write("<script>alert('You have successfully registered');</script>");
                btnLogin.Visible = true;
                con.Close();
            }

        }

        public void GenerateUsername()
        {
            if(Role.SelectedValue == "Administrator")
            {
                empType = "A";
            }
            else
            {
                empType = "B";
            }
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
                    username = empType+"0001";
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
                    username = empType + "000" + count.ToString();
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

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}