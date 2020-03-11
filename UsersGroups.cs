using ConnectNow.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ConnectNow
{
	public class UsersGroups
	{
		public int UserID { get; set; }
		public string Name { get; set; }

		public static List<UsersGroups> getList(int groupID)
		{
            var conn = new SqlConnection(Constants.SqlConnectionString);
            conn.Open();

            var query = $"SELECT u.* FROM USERS u JOIN GroupMembers gm ON u.UserID = gm.UserID WHERE gm.GroupID = '{groupID}'";
            var sqlAdapter = new SqlDataAdapter(query, conn);
            var table = new DataTable();
            sqlAdapter.Fill(table);

            sqlAdapter.Dispose();
            conn.Close();
            conn.Dispose();

            List<UsersGroups> u = new List<UsersGroups>();
            foreach (DataRow row in table.Rows)
            {
                var group = new UsersGroups();
                group.UserID = int.Parse(row["UserID"].ToString());
                group.Name = row["FName"].ToString() + " " + row["LName"].ToString();
                u.Add(group);
            }

            return u;
        }
	}
}