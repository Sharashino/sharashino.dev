using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace sharashino.dev
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdminLoginClick(object sender, EventArgs e)
        {
            CheckForAdminLoginCredentials();
        }

        private void CheckForAdminLoginCredentials()
        {
            try
            {
                SqlConnection connection = new SqlConnection(strCon);

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM AdminLogin WHERE username='" + AdminUsernameInput.Text.Trim() + "' AND password='" + AdminPasswordInput.Text.Trim() + "'", connection);

                SqlDataReader dataReader = cmd.ExecuteReader();

                if (dataReader.HasRows)
                {
                    while (dataReader.Read())
                    {
                        Session["username"] = dataReader.GetValue(0).ToString();
                        Session["password"] = dataReader.GetValue(2).ToString();
                        Session["role"] = "admin";
                    }

                    Response.Redirect("home.aspx");
                }
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }
    }
}