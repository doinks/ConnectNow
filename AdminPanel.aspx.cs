using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection;
using System.Configuration;
using ConnectNow.Common;

namespace ConnectNow.Controls
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Crud crud = new Crud();
            SqlDataReader reader = crud.getUser();
            while (reader.Read())
            {
                TableRow r = new TableRow();
                for (int i = 1; i < reader.FieldCount; i++)
                {
                    TableCell c = new TableCell();
                    c.Text = reader[i].ToString();
                    r.Cells.Add(c);
                }
                TableCell edit = addEdit("e-" + reader[0].ToString());
                TableCell delete = addDelete("d-" + reader[0].ToString());
                r.Cells.Add(edit);
                r.Cells.Add(delete);
                Table2.Rows.Add(r);
            }
        }

        public TableCell addEdit(string id)
        {
            TableCell edit = new TableCell();
            Button BtnEdit = new Button();
            BtnEdit.ID = id;
            BtnEdit.Text = "Edit";
            BtnEdit.Click += new EventHandler(btn_Edit);
            edit.Controls.Add(BtnEdit);
            return edit;
        }

        public TableCell addDelete(string id)
        {
            TableCell delete = new TableCell();
            Button BtnDelete = new Button();
            BtnDelete.ID = id;
            BtnDelete.Text = "Delete";
            BtnDelete.Click += new EventHandler(btn_Delete);
            delete.Controls.Add(BtnDelete);
            return delete;
        }

        protected void btn_Edit(object sender, EventArgs e)
        {
            Button b = sender as Button;
            var parts = b.ClientID.Split('-');
            string id = parts[1];
            Session["id"] = id;
            Response.Redirect("/AdminPanelEdit.aspx");
        }

        protected void btn_Delete(object sender, EventArgs e)
        {
            Button b = sender as Button;
            var parts = b.ClientID.Split('-');
            string id = parts[1];
            Crud c = new Crud();
            c.deleteUser(id);
            Response.Redirect("AdminPanel.aspx");
        }

    }
}

