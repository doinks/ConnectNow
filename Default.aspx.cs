using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ConnectNow.User;
using System.Web.Security;

namespace ConnectNow
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (eMail.Text == "" || fName.Text == "" || lName.Text == "" || dOb.Text == "" || cIty.Text == "" || sTate.Text == "" || pHone.Text == "" || oCcupation.Text == "" || uSername.Text == "" || pAssword.Text == "")
            {
                if (eMail.Text.Length < 1)
                {
                    eMail.Style["border-color"] = "red";
                }

                else if (eMail.Text.Length > 1)
                {
                    eMail.Style["border-color"] = "green";
                }

                if (fName.Text.Length < 1)
                {
                    fName.Style["border-color"] = "red";
                }

                else if (fName.Text.Length > 1)
                {
                    fName.Style["border-color"] = "green";
                }

                if (lName.Text.Length < 1)
                {
                    lName.Style["border-color"] = "red";
                }

                else if (lName.Text.Length > 1)
                {
                    lName.Style["border-color"] = "green";
                }

                if (dOb.Text.Length < 1)
                {
                    dOb.Style["border-color"] = "red";
                }

                else if (dOb.Text.Length > 1)
                {
                    dOb.Style["border-color"] = "green";
                }

                if (cIty.Text.Length < 1)
                {
                    cIty.Style["border-color"] = "red";
                }

                else if (cIty.Text.Length > 1)
                {
                    cIty.Style["border-color"] = "green";
                }

                if (sTate.Text.Length < 1)
                {
                    sTate.Style["border-color"] = "red";
                }

                else if (sTate.Text.Length > 1)
                {
                    sTate.Style["border-color"] = "green";
                }

                if (pHone.Text.Length < 1)
                {
                    pHone.Style["border-color"] = "red";
                }

                else if (pHone.Text.Length > 1)
                {
                    pHone.Style["border-color"] = "green";
                }

                if (oCcupation.Text.Length < 1)
                {
                    oCcupation.Style["border-color"] = "red";
                }

                else if (oCcupation.Text.Length > 1)
                {
                    oCcupation.Style["border-color"] = "green";
                }

                if (uSername.Text.Length < 1)
                {
                    uSername.Style["border-color"] = "red";
                }

                else if (uSername.Text.Length > 1)
                {
                    uSername.Style["border-color"] = "green";
                }

                if (pAssword.Text.Length < 1)
                {
                    pAssword.Style["border-color"] = "red";
                }

                else if (pAssword.Text.Length > 1)
                {
                    pAssword.Style["border-color"] = "green";
                }


            }

            else if (eMail.Text != "" && fName.Text != "" && lName.Text != "" && dOb.Text != "" && cIty.Text != "" && sTate.Text != "" && pHone.Text != "" && oCcupation.Text != "" && uSername.Text != "" && pAssword.Text != "")
            {
                int groupID = 1;
                if (oCcupation.Text == "Software_Engineer")
                {
                    groupID = 1;
                }
                else if (oCcupation.Text == "Cyber_Security_Specialist")
                {
                    groupID = 2;
                }
                else if (oCcupation.Text == "Network_Engineer")
                {
                    groupID = 3;
                }
                else if (oCcupation.Text == "Database_Administrator")
                {
                    groupID = 4;
                }
                else if (oCcupation.Text == "Frontend_Designer")
                {
                    groupID = 5;
                }

                User.User U1 = new User.User(eMail.Text, fName.Text, lName.Text, dOb.Text, cIty.Text, sTate.Text, pHone.Text, oCcupation.Text, uSername.Text, pAssword.Text);

                U1.AddUser(groupID);


                var authTicket = new FormsAuthenticationTicket(1, U1.Username, DateTime.Now, DateTime.Now.AddMinutes(30), false, "");
                var cookieString = FormsAuthentication.Encrypt(authTicket);
                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, cookieString);
                cookie.Path = FormsAuthentication.FormsCookiePath;

                HttpContext.Current.Response.Cookies.Add(cookie);

                Response.Redirect("/Profile.Aspx");

            }

        }
    }
}