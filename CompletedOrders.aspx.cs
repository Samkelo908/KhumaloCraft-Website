using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class CompletedOrders : System.Web.UI.Page
    {
        static List<Order> orders = new List<Order>();
        DataAccess da = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrders();
            }
        }

        private void LoadOrders()
        {
           
            orders = da.GetUserOrder(UserHolder.loggedInUser.id);

            dgOrder.DataSource = orders;
            dgOrder.DataBind();
        }
    }
}