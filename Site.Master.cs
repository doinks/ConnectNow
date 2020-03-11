using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ConnectNow
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            Session["Login"] = "";
            Response.Redirect("/Default.Aspx");

        }

        protected void MessageInbox_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MessageInbox.Aspx");
        }

        protected void ProFile_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Profile.Aspx");
        }

        protected void LogIn_Click(object sender, EventArgs e)
        {
            var login = new Login(UserName.Text, PassWord.Text);
            var result = login.adminLogin();

            if (UserName.Text == "aHines" && PassWord.Text == "ahpw" || UserName.Text == "sColantuono" && PassWord.Text == "scpw")
            {
                ProFile.Visible = false;
                Response.Redirect("/AdminPanel.Aspx");
                
            }

            if (result)
            {

                var authTicket = new FormsAuthenticationTicket(1, UserName.Text, DateTime.Now, DateTime.Now.AddMinutes(30), false, "");
                var cookieString = FormsAuthentication.Encrypt(authTicket);
                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, cookieString);
                cookie.Path = FormsAuthentication.FormsCookiePath;

                HttpContext.Current.Response.Cookies.Add(cookie);

                Response.Redirect("/Profile.Aspx");
            }
            else
            {
                Response.Redirect("/Default.Aspx");

            }
        }
    }
}