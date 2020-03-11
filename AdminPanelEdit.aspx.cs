using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ConnectNow.User;

namespace ConnectNow
{
    public partial class AdminPanelEdit : System.Web.UI.Page
    {
        private bool DataInitialized = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DataInitialized"] == null || (bool)Session["DataInitialized"] == false)
            {

                Crud c = new Crud();
                SqlDataReader reader = c.getOneUser(Convert.ToString(Session["id"]));

                while (reader.Read())
                {
                    EmailEdit.Text = reader["Email"].ToString();
                    FNameEdit1.Text = reader["FName"].ToString();
                    LNameEdit.Text = reader["LName"].ToString();
                    DOBEdit.Text = reader["DOB"].ToString();
                    CityEdit.Text = reader["City"].ToString();
                    StateEdit.Text = reader["State"].ToString();
                    PhoneEdit.Text = reader["Phone"].ToString();
                    OccupationEdit.Text = reader["Job"].ToString();
                    UsernameEdit.Text = reader["Username"].ToString();
                    PasswordEdit.Text = reader["Password"].ToString();
                }
                Session["DataInitialized"] = true;
                //this.DataInitialized = true;
            }
        }

        protected void EditUserBTN_Click(object sender, EventArgs e)
        {
            User.User u = new User.User();
            u.EMail = EmailEdit.Text;
            u.FName = FNameEdit1.Text;
            u.LName = LNameEdit.Text;
            u.Dob = DOBEdit.Text;
            u.City = CityEdit.Text;
            u.State = StateEdit.Text;
            u.Phone = PhoneEdit.Text;
            u.Occupation = OccupationEdit.Text;
            u.Username = UsernameEdit.Text;
            u.Password = PasswordEdit.Text;
            Crud c = new Crud();
            c.updateUser(u, Convert.ToString(Session["id"]));
            Session["DataInitialized"] = false;
            Response.Redirect("/AdminPanel.Aspx");
        }
    }
}