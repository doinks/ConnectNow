using ConnectNow.Common;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace ConnectNow
{
	public class Message
    {
        public Message()
        {

        }

        public Message(int messageID, string messageText, int groupID, int userID)
        {
            this.MessageID = messageID;
            this.MessageText = messageText;
            this.GroupID = groupID;
            this.UserID = userID;
        }

        public int MessageID { get; set; }
        public string MessageText { get; set; }
        public int GroupID { get; set; }
        public int UserID { get; set; }
        public string UserName { get; set; }

        public static List<Message> LoadMessages(int groupID)
        {
            var conn = new SqlConnection(Constants.SqlConnectionString);
            conn.Open();

            var query = $"SELECT gm.MessageID, gm.Message, gm.GroupID, gm.UserID, u.FName, u.LName FROM GroupMessages gm JOIN Users u ON u.UserID = gm.UserID WHERE gm.GroupID = '{groupID}'";
            var sqlAdapter = new SqlDataAdapter(query, conn);
            var table = new DataTable();
            sqlAdapter.Fill(table);
            sqlAdapter.Dispose();
            conn.Close();
            conn.Dispose();

            List<Message> messages = new List<Message>();
            foreach (DataRow row in table.Rows)
            {
                var message = new Message();
                message.MessageID = int.Parse(row["MessageID"].ToString());
                message.GroupID = int.Parse(row["GroupID"].ToString());
                message.UserID = int.Parse(row["UserID"].ToString());
                message.MessageText = row["Message"].ToString();
                message.UserName = row["FName"].ToString() + " " + row["LName"].ToString();
                messages.Add(message);
            }

            return messages;
        }

        public void saveMessage(string userName)
        {
            SqlConnection con = new SqlConnection();

            con.ConnectionString = Constants.SqlConnectionString;

            string strSQL = "INSERT into GroupMessages (Message, GroupID, UserID) " +
                "VALUES (@Message, @GroupID, @UserID)";

            string strSQL2 = "SELECT * FROM Users WHERE Username = @Username";
            SqlCommand comm2 = new SqlCommand(strSQL2, con);
            comm2.Parameters.AddWithValue("@Username", userName);

            SqlCommand comm = new SqlCommand();

            comm.CommandText = strSQL;

            comm.Connection = con;

            //comm.Parameters.AddWithValue("@MessageID", this.MessageID);
            comm.Parameters.AddWithValue("@Message", MessageText);
            comm.Parameters.AddWithValue("@GroupID", GroupID);

            con.Open();


            var userTable = new DataTable();
            var userDataAdapter = new SqlDataAdapter(comm2);
            userDataAdapter.Fill(userTable);

            var userID = int.Parse(userTable.Rows[0]["UserID"].ToString());
            var name = userTable.Rows[0]["FName"].ToString() + " " + userTable.Rows[0]["LName"].ToString();
            UserID = userID;
            UserName = name;

            comm.Parameters.AddWithValue("@UserID", userID);

            int intRecs = comm.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }
    }
}