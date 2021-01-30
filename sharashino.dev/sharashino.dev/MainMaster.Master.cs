using System;

namespace sharashino.dev
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    HideLinks();
                }
                else if(Session["role"].Equals("user"))
                {
                    ShowUserLinks();
                    
                }
                else if(Session["role"].Equals("admin"))
                {
                    ShowAdminLinks();
                }
            }
            catch
            {
                Response.Write("<script>alert('Oh no, something went wrong :(   Try again');</script>");
            }
        }

        protected void AdminLoginClick(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void GamesManagmentClick(object sender, EventArgs e)
        {
            Response.Redirect("admingamesmanager.aspx");
        }

        protected void TermsContitionsClick(object sender, EventArgs e)
        {
            Response.Redirect("termsconditions.aspx");
        }

        protected void AccountManagment(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void Viewprojectsclick(object sender, EventArgs e)
        {
            Response.Redirect("projects.aspx");
        }

        protected void Userlogin(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void Signup(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["password"] = null;
            Session["status"] = null;
            Session["role"] = null;

            HideLinks();

            Response.Redirect("home.aspx");
        }

        private void HideLinks()
        {
            LoginBtn.Visible = true;
            SignUpbtn.Visible = true;

            LogoutBtn.Visible = false;
            HelloUsr.Visible = false;

            AccountMgmtBtn.Visible = false;
            AdminLoginBtn.Visible = false;
            GamesMgmtBtn.Visible = false;
            TermsConditionsBtn.Visible = true;
        }
        private void ShowUserLinks()
        {
            LoginBtn.Visible = false;
            SignUpbtn.Visible = false;

            LogoutBtn.Visible = true;
            HelloUsr.Visible = true;
            HelloUsr.Text = "Hello " + Session["username"].ToString();

            AccountMgmtBtn.Visible = true;
            AdminLoginBtn.Visible = false;
            GamesMgmtBtn.Visible = false;
            TermsConditionsBtn.Visible = true;
        }

        private void ShowAdminLinks()
        {
            LoginBtn.Visible = false;
            SignUpbtn.Visible = false;

            LogoutBtn.Visible = true;
            HelloUsr.Visible = true;
            HelloUsr.Text = "Hello Admin " + Session["username"].ToString();

            AccountMgmtBtn.Visible = true;
            AdminLoginBtn.Visible = true;
            GamesMgmtBtn.Visible = true;
            TermsConditionsBtn.Visible = true;
        }
    }
}