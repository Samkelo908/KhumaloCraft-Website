using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class OrderHistory : System.Web.UI.Page
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
            if (UserHolder.loggedInUser.staff)
            {
                orders = da.GetAllOrders();
                ddlOrderSelection.Visible = true;
                ddlOrderUpdate.Visible = true;
                lblOrderSelect.Visible = true;
                lblOrderUpdate.Visible = true;
                btnUpdateOrder.Visible = true;

                ddlOrderSelection.DataSource = orders;
                ddlOrderSelection.DataTextField = "orderID";
                ddlOrderSelection.DataValueField = "orderID";
                ddlOrderSelection.DataBind();
            }
            else
            {
                orders = da.GetUserOrder(UserHolder.loggedInUser.id);
                ddlOrderSelection.Visible = false;
                ddlOrderUpdate.Visible = false;
                lblOrderSelect.Visible = false;
                lblOrderUpdate.Visible = false;
                btnUpdateOrder.Visible = false;
            }

            dgOrder.DataSource = orders;
            dgOrder.DataBind();
        }

        protected void btnUpdateOrder_Click(object sender, EventArgs e)
        {
            string updatedStatus = ddlOrderUpdate.SelectedValue;
            int orderID = Convert.ToInt32(ddlOrderSelection.SelectedValue);

            da.UpdateOrder(orderID, updatedStatus);
            LoadOrders();
        }

        protected void btnViewOrder_Click(object sender, EventArgs e)
        {
            int orderID;
            if (int.TryParse(txtOrderID.Text, out orderID))
            {
                LoadOrderDetails(orderID);
            }
            else
            {
                orderDetailsLabel.Text = "Invalid Order ID.";
            }
        }

        private void LoadOrderDetails(int orderID)
        {
            Order order = da.GetOrderByID(orderID);

            if (order != null)
            {
                orderDetailsLabel.Text = "Order ID: " + order.orderID + "<br>" +
                                         "Order Time: " + order.orderTime + "<br>" +
                                         "Order Total: " + order.orderTotal + "<br>" +
                                         "Order Details: " + order.orderDetails + "<br>" +
                                         "User ID: " + order.userID + "<br>" +
                                         "Status: " + order.status;
            }
            else
            {
                orderDetailsLabel.Text = "Order not found.";
            }
        }
    }
}