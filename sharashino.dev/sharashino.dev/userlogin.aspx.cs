using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace sharashino.dev
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpClick(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LogInClick(object sender, EventArgs e)
        {
            CheckForLoginCredentials();
        }

        private void CheckForLoginCredentials()
        {
            try
            {
                SqlConnection connection = new SqlConnection(strCon);

                if(connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM UsersMaster WHERE username='" + UsernameInput.Text.Trim() + "' AND password='" + PasswordInput.Text.Trim() + "'", connection);
                SqlDataReader dataReader = cmd.ExecuteReader();

                if (dataReader.HasRows)
                {
                    while(dataReader.Read())
                    {
                        Session["username"] = dataReader.GetValue(1).ToString();
                        Session["password"] = dataReader.GetValue(3).ToString();
                        Session["status"] = dataReader.GetValue(4).ToString();
                        Session["role"] = "user";
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