using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConnectNow
{
    public partial class Database : System.Web.UI.Page
    {
        private int GroupID = 4;
        public List<UsersGroups> Users = new List<UsersGroups>();
        public List<Message> Messages = new List<Message>();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Users = UsersGroups.getList(GroupID);
            this.Messages = Message.LoadMessages(GroupID);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string message = NewMessage.Text;
            if (string.IsNullOrWhiteSpace(message))
            {
                return;
            }

            if (User.Identity.IsAuthenticated)
            {
                Message message1 = new Message();
                message1.GroupID = GroupID;
                message1.MessageText = message;
                message1.UserID = 0;
                message1.saveMessage(User.Identity.Name);

                Messages.Add(message1);
                NewMessage.Text = "";
            }
        }
    }
}