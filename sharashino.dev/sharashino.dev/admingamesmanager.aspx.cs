using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace sharashino.dev
{
    public partial class admingamesmanager : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GamesView.DataBind();
        }

        protected void AddButtonPress(object sender, EventArgs e)
        {
            if (CheckIfGameExists())
            {
                Response.Write("<script>alert('Game with that ID or Name arleady Exists!')");
            }
            else
            {
                RegisterNewGame();
                ClearForm();
            }
        }

        protected void UpdateButtonPress(object sender, EventArgs e)
        {
            if (CheckIfGameExists())
            {
                UpdateGameName();
                ClearForm();
            }
            else
            {
                Response.Write("<script>alert('Game with that ID or Name doesn't exist!')");
            }
        }

        protected void DeleteButtonPress(object sender, EventArgs e)
        {
            if (CheckIfGameExists())
            {
                DeleteGame();
                ClearForm();
            }
            else
            {
                Response.Write("<script>alert('Game with that ID or Name doesn't exist!')");
            }
        }

        private bool CheckIfGameExists()
        {
            try
            {
                SqlConnection connection = new SqlConnection(conStr);

                if(connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                SqlCommand IDcmd = new SqlCommand("SELECT * FROM GamesMaster WHERE game_id='" + GameIDBox.Text.Trim() + "'", connection);
                SqlDataAdapter IDAdapter = new SqlDataAdapter(IDcmd);

                DataTable dataTable = new DataTable();

                IDAdapter.Fill(dataTable);

                if(dataTable.Rows.Count >= 1 )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
                return false;
            }
        }

        private void RegisterNewGame()
        {
            try
            {
                SqlConnection connection = new SqlConnection(conStr);

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO GamesMaster(game_id, game_name) " +
                                                "values(@game_id, @game_name)", connection);

                cmd.Parameters.AddWithValue("@game_id", GameIDBox.Text.Trim());
                cmd.Parameters.AddWithValue("@game_name", GameTitleBox.Text.Trim());

                cmd.ExecuteNonQuery();
                GamesView.DataBind();
                connection.Close();
                Response.Write("<script>alert('Succesfully updated Game info');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }

        private void UpdateGameName()
        {
            try
            {
                SqlConnection connection = new SqlConnection(conStr);

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE GamesMaster SET game_name=@game_name WHERE game_id='" + GameIDBox.Text.Trim() + "'", connection);

                cmd.Parameters.AddWithValue("@game_name", GameTitleBox.Text.Trim());

                cmd.ExecuteNonQuery();
                GamesView.DataBind();
                connection.Close();
                Response.Write("<script>alert('Succesfully added new game');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }

        private void DeleteGame()
        {
            try
            {
                SqlConnection connection = new SqlConnection(conStr);

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM GamesMaster WHERE game_id='" + GameIDBox.Text.Trim() + "'", connection);

                cmd.ExecuteNonQuery();
                GamesView.DataBind();
                connection.Close();
                Response.Write("<script>alert('Game deleted succesfully');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }

        private void ClearForm()
        {
            GameIDBox.Text = "";
            GameTitleBox.Text = "";
        }

        protected void GamesView_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conStr);

            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM GamesMaster", connection);
            adapter.Fill(dt);
            GamesView.DataSource = dt;
            GamesView.DataBind();
        }
    }
}
