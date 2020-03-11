using ConnectNow.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace ConnectNow
{
    public class Login
    {

        public Login(string username, string password)
        {
            _username = username;
            _password = password;
        }

        public bool adminLogin()
        {
            
                
                var conn = new SqlConnection(Constants.SqlConnectionString);
                conn.Open();

                var query = $"SELECT * FROM USERS WHERE [Username] = '{_username}' AND [Password] = '{_password}'";
                var sqlAdapter = new SqlDataAdapter(query, conn);
                var table = new DataTable();
                sqlAdapter.Fill(table);

                sqlAdapter.Dispose();
                conn.Close();
                conn.Dispose();

                if (table.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //var reader = sqlCommand.ExecuteReader();
                //if(reader.Read())
                //{
                //    return true;
                //}
            //}

            return false;
        }

        private readonly string _username;
        private readonly string _password;
    }
}