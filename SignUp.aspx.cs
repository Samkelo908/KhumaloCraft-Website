using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class SignUp : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            da.SignUp(edtName.Text, edtSignUpPassword.Text, edtSignUpEmail.Text);

           
            User user = da.LoginUser(edtSignUpEmail.Text, edtSignUpPassword.Text);
            if (user != null)
            {
                UserHolder.loggedInUser = user;
                Session["userID"] = user.id;
                Session["userName"] = user.name;
                Session["userEmail"] = user.email;

                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Write("Sign up failed. Please try again.");
            }
        }
    }
}