using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConfigureNavigation();
                RegisterClientScript();
                UpdateSignupLink();
            }
        }

        private void ConfigureNavigation()
        {
            if (UserHolder.loggedInUser != null && UserHolder.loggedInUser.staff)
            {
                AddNewProductLink.Visible = true;
                OrderHistoryLink.Visible = true;
            }
            else
            {
                AddNewProductLink.Visible = false;
                OrderHistoryLink.Visible = false;
            }
        }

        private void RegisterClientScript()
        {
            bool isAuthenticated = UserHolder.loggedInUser != null;
            string script = $@"
                var isAuthenticated = {(isAuthenticated ? "true" : "false")};
                document.getElementById('CompletedOrdersLink').addEventListener('click', function(event) {{
                    if (!isAuthenticated) {{
                        event.preventDefault();
                        alert('Please log in or sign up before accessing this page.');
                    }}
                }});
            ";
            ScriptManager.RegisterStartupScript(this, GetType(), "checkAuth", script, true);
        }

        private void UpdateSignupLink()
        {
            bool isAuthenticated = UserHolder.loggedInUser != null;
            if (isAuthenticated)
            {
                var signupLink = (HyperLink)FindControl("signupLink");
                signupLink.NavigateUrl = "~/Profile.aspx";
                signupLink.Text = "Profile";
            }
        }
    }
}