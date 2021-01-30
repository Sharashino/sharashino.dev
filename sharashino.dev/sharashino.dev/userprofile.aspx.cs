using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace sharashino.dev
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            DownloadedGamesView.DataBind();

            try
            {
                SqlConnection connection = new SqlConnection(conStr);

                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM UsersMaster WHERE username='" + Session["username"] + "'", connection);

                SqlDataReader dataReader = cmd.ExecuteReader();

                if (dataReader.HasRows)
                {
                    while (dataReader.Read())
                    {
                        NameBox.Text = dataReader.GetString(0);
                        UsernameBox.Text = dataReader.GetString(1);
                        EmailBox.Text = dataReader.GetString(2);
                        AccountStatusLabel.Text = dataReader.GetString(4);
                    }
                }
                connection.Close();
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }

        protected void UpdatePassword(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection(conStr);

                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE UsersMaster SET password=@password WHERE username='" + Session["username"] + "'", connection);

                cmd.Parameters.AddWithValue("@password", NewPasswordBox.Text.Trim());
                cmd.ExecuteNonQuery();
                connection.Close();
                Response.Write("<script>alert('Data changed succesfully!');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }

        protected void DownloadedGamesView_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conStr);

            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT game_title, dwn_date FROM UserDownload WHERE username='" + Session["username"] + "'", connection);
            adapter.Fill(dt);
            DownloadedGamesView.DataSource = dt;
            DownloadedGamesView.DataBind();
        }
    }
}