using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace ConnectNow
{
    public class Crud
    {

        public SqlDataReader getUser()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectNow"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * FROM Users", con);
            con.Open();
            return cmd.ExecuteReader();
        }

        public void deleteUser(string id)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectNow"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand($"DELETE FROM Users WHERE UserID={id}", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        public SqlDataReader getOneUser(string id)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectNow"].ConnectionString);
            SqlCommand cmd = new SqlCommand($"SELECT * FROM Users WHERE UserID={id}", con);
            con.Open();
            return cmd.ExecuteReader();
        }

        public void updateUser(User.User u, string id)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectNow"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand($"UPDATE Users SET Email=@Email, FName=@FName, LName=@LName, DOB=@DOB, City=@City, State=@State, Phone=@Phone, Job=@Job, Username=@Username, Password=@Password WHERE UserID={id}", con);
                cmd.Parameters.AddWithValue("@Email", u.EMail);
                cmd.Parameters.AddWithValue("@Fname", u.FName);
                cmd.Parameters.AddWithValue("@Lname", u.LName);
                cmd.Parameters.AddWithValue("@DOB", u.Dob);
                cmd.Parameters.AddWithValue("@City", u.City);
                cmd.Parameters.AddWithValue("@State", u.State);
                cmd.Parameters.AddWithValue("@Phone", u.Phone);
                cmd.Parameters.AddWithValue("@Job", u.Occupation);
                cmd.Parameters.AddWithValue("@Username", u.Username);
                cmd.Parameters.AddWithValue("@Password", u.Password);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

    }
}