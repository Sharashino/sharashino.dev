using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;

namespace sharashino.dev
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                ShowDownloadButtons();
            }
            else
            {
                HideDownloadButtons();
            }
        }

        private void ShowDownloadButtons()
        {
            DownloadJBZDY.Visible = true;
            DownloadSeedling.Visible = true;
        }

        private void HideDownloadButtons()
        {
            DownloadJBZDY.Visible = false;
            DownloadSeedling.Visible = false;
        }

        protected void DownloadJBZDY_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/octec-stream";
            Response.AppendHeader("content-disposition", "filename=jbzdy.txt");
            Response.TransmitFile(Server.MapPath("~/Downloads/jbzdy.txt"));
            AddToDownloadedGames("JBZDY-GAME");
            Response.End();
        }

        protected void DownloadSeedling_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/octec-stream";
            Response.AppendHeader("content-disposition", "filename=seedling.txt");
            Response.TransmitFile(Server.MapPath("~/Downloads/seedling.txt"));
            AddToDownloadedGames("Seedling");
            Response.End();
        }

        private void AddToDownloadedGames(string GameName)
        {
            string conStr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

            try
            {
                SqlConnection connection = new SqlConnection(conStr);

                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO UserDownload(username, game_title, dwn_date) " +
                                                "VALUES(@username, @game_title, @dwn_date)", connection);

                cmd.Parameters.AddWithValue("@username", Session["username"]);
                cmd.Parameters.AddWithValue("@game_title", GameName);
                cmd.Parameters.AddWithValue("@dwn_date", DateTime.Now);
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }
    }
}