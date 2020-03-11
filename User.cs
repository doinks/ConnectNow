using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using ConnectNow.Common;

namespace ConnectNow.User
{
    public class User
    {
        string eMail;
        string fName;
        string lName;
        string dOb;
        string cIty;
        string sTate;
        string pHone;
        string oCcupation;
        string uSername;
        string pAssword;


        public User(string eMail, string fName, string lName, string dOb, string cIty, string sTate, string pHone, string oCcupation, string uSername, string pAssword)
        {
            this.EMail = eMail;
            this.FName = fName;
            this.LName = lName;
            this.Dob = dOb;
            this.City = cIty;
            this.State = sTate;
            this.Phone = pHone;
            this.Occupation = oCcupation;
            this.Username = uSername;
            this.Password = pAssword;
        }

        public User()
        {

        }


        public string EMail
        {
            get
            {
                return eMail;
            }
            set
            {
                eMail = value;
            }
        }

        public string FName
        {
            get
            {
                return fName;
            }
            set
            {
                fName = value;
            }
        }

        public string LName
        {
            get
            {
                return lName;
            }
            set
            {
                lName = value;
            }
        }

        public string Dob
        {
            get
            {
                return dOb;
            }
            set
            {
                dOb = value;
            }
        }

        public string City
        {
            get
            {
                return cIty;
            }
            set
            {
                cIty = value;
            }
        }

        public string State
        {
            get
            {
                return sTate;
            }
            set
            {
                sTate = value;
            }
        }

        public string Phone
        {
            get
            {
                return pHone;
            }
            set
            {
                pHone = value;
            }
        }

        public string Occupation
        {
            get
            {
                return oCcupation;
            }
            set
            {
                oCcupation = value;
            }
        }

        public string Username
        {
            get
            {
                return uSername;
            }
            set
            {
                uSername = value;
            }
        }

        public string Password
        {
            get
            {
                return pAssword;
            }
            set
            {
                pAssword = value;
            }
        }

        public void AddUser(int groupID)
        {
            SqlConnection con = new SqlConnection();

            con.ConnectionString = Constants.SqlConnectionString;


            string strSQL = "INSERT into Users (Email, FName, LName, DOB, City, State, Phone, Job, Username, Password) " +
                "VALUES (@Email, @FName, @LName, @DOB, @City, @State, @Phone, @Job, @Username, @Password)";

            SqlCommand comm = new SqlCommand();

            comm.CommandText = strSQL;

            comm.Connection = con;

            comm.Parameters.AddWithValue("@Email", EMail);
            comm.Parameters.AddWithValue("@FName", FName);
            comm.Parameters.AddWithValue("@LName", LName);
            comm.Parameters.AddWithValue("@DOB", Dob);
            comm.Parameters.AddWithValue("@City", City);
            comm.Parameters.AddWithValue("@State", State);
            comm.Parameters.AddWithValue("@Phone", Phone);
            comm.Parameters.AddWithValue("@Job", Occupation);
            comm.Parameters.AddWithValue("@Username", Username);
            comm.Parameters.AddWithValue("@Password", Password);

            string strSQL2 = "SELECT * FROM Users WHERE Username = @Username";
            SqlCommand comm2 = new SqlCommand(strSQL2, con);
            comm2.Parameters.AddWithValue("@Username", Username);

            string strSQL3 = "INSERT INTO GroupMembers (GroupID, UserID) VALUES (@GroupID, @UserID)";
            SqlCommand comm3 = new SqlCommand(strSQL3, con);
            comm3.Parameters.AddWithValue("@GroupID", groupID);

            con.Open();
            int intRecs = comm.ExecuteNonQuery();

            var userTable = new DataTable();
            var userDataAdapter = new SqlDataAdapter(comm2);
            userDataAdapter.Fill(userTable);

            var userID = int.Parse(userTable.Rows[0]["UserID"].ToString());
            comm3.Parameters.AddWithValue("@UserID", userID);

            comm3.ExecuteNonQuery();

            con.Close();

            con.Dispose();
        }


    }
}
