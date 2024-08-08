using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userID"] == null)
                {

                   
                    return;
                }

                int userId = (int)Session["userID"];
                DataAccess dataAccess = new DataAccess();
                User user = dataAccess.GetUserById(userId);

                if (user != null)
                {
                    UserHolder.loggedInUser = user;

                    lblName.Text = user.name;
                    lblEmail.Text = user.email;

                }
                else
                {

                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login");
        }
    }
}