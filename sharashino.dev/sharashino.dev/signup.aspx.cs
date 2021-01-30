using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace sharashino.dev
{
    public partial class signup : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpClick(object sender, EventArgs e)
        {
            if(CheckMemberExist())
            {
                Response.Write("<script>alert('User with that username already exists!');</script>");
            }
            else
            {
                SignUpUser();
            }
        }

        private bool CheckMemberExist()
        {
            try
            {
                SqlConnection connection = new SqlConnection(strCon);

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM UsersMaster WHERE username='" + UsernameInput.Text.Trim() + "'", connection);

                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();

                dataAdapter.Fill(dataTable);

                if (dataTable.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

                return false;
            }
        }

        private void SignUpUser()
        {
            try
            {
                SqlConnection connection = new SqlConnection(strCon);

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO UsersMaster(name, username, email, password, account_status) " +
                                                "VALUES(@name, @username, @email, @password, @account_status)", connection);

                cmd.Parameters.AddWithValue("@name", NameInput.Text.Trim());
                cmd.Parameters.AddWithValue("@username", UsernameInput.Text.Trim());
                cmd.Parameters.AddWithValue("@email", EmailInput.Text.Trim());
                cmd.Parameters.AddWithValue("@password", PasswordInput.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "active");

                cmd.ExecuteNonQuery();
                connection.Close();
                Response.Write("<script>alert('Sign Up Successfull. Go to User Login to Log In');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }
    }
}