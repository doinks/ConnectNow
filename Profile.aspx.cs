using ConnectNow.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnectNow
{
    public partial class Profile : System.Web.UI.Page
    {
        public UserProfile UserProfile { get; set; }
        public List<UserGroup> UserGroups { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                var userName = User.Identity.Name;

                var conn = new SqlConnection(Constants.SqlConnectionString);
                conn.Open();

                var query = $"SELECT * FROM USERS WHERE [Username] = '{userName}'";
                var sqlAdapter = new SqlDataAdapter(query, conn);
                var table = new DataTable();
                sqlAdapter.Fill(table);

                var userID = int.Parse(table.Rows[0]["UserID"].ToString());
                var groupsQuery = $"SELECT g.* FROM Groups g JOIN GroupMembers gm ON g.GroupID = gm.GroupID WHERE gm.UserID = {userID}";
                var groupsTable = new DataTable();
                var sqlGAdapter = new SqlDataAdapter(groupsQuery, conn);
                sqlGAdapter.Fill(groupsTable);

                sqlAdapter.Dispose();
                conn.Close();
                conn.Dispose();

                this.UserProfile = new UserProfile();
                this.UserProfile.UserID = userID;
                this.UserProfile.Email = table.Rows[0]["Email"].ToString();
                this.UserProfile.Name = table.Rows[0]["FName"].ToString() + " " + table.Rows[0]["LName"].ToString();
                this.UserProfile.Username = table.Rows[0]["Username"].ToString();
                this.UserProfile.DOB = table.Rows[0]["DOB"].ToString();
                this.UserProfile.City = table.Rows[0]["City"].ToString();
                this.UserProfile.State = table.Rows[0]["State"].ToString();
                this.UserProfile.Phone = table.Rows[0]["Phone"].ToString();
                this.UserProfile.Job = table.Rows[0]["Job"].ToString();

                this.UserGroups = new List<UserGroup>();
                foreach(DataRow row in groupsTable.Rows)
                {
                    var group = new UserGroup();
                    group.GroupID = int.Parse(row["GroupID"].ToString());
                    group.Name = row["GroupName"].ToString();
                    this.UserGroups.Add(group);
                }
            }
        }
    }

    public class UserProfile
    {
        public int UserID { get; set; }
        public string Email { get; set; }
        public string Name { get; set; }
        public string Username { get; set; }
        public string DOB { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Phone { get; set; }
        public string Job { get; set; }
    }

    public class UserGroup
    {
        public int GroupID { get; set; }
        public string Name { get; set; }
    }
}