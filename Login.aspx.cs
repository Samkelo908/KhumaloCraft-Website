using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class Login : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User user = da.LoginUser(edtLoginEmail.Text, edtLoginPassword.Text);
            if (user != null)
            {
                
                Session["userID"] = user.id;
                Session["userName"] = user.name;
                Session["userEmail"] = user.email;

               
                UserHolder.loggedInUser = user;

               
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                
                Response.Write("Login failed. Please check your email and password.");
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp");
        }
        private bool IsValidUser(string username, string password)
        {
            
            return username == "testuser" && password == "testpassword";
        }
    }
}