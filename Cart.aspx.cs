using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ST10141464POE
{
    public partial class Cart : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCart();
            }
        }

        private void BindCart()
        {
            if (CartHolder.cart.Count == 0)
            {
                lblEmpty.Visible = true;
                GVCart.Visible = false;
                btnClearOrder.Visible = false;
                btnSubmitOrder.Visible = false;
            }
            else
            {
                GVCart.DataSource = CartHolder.cart;
                GVCart.DataBind();
                lblEmpty.Visible = false;
                GVCart.Visible = true;
                btnClearOrder.Visible = true;
                btnSubmitOrder.Visible = true;
            }
        }

        protected void btnSubmitOrder_Click(object sender, EventArgs e)
        {
            da.SubmitOrder(CartHolder.cart);
            CartHolder.cart.Clear();
            BindCart();

            
            lblMessage.Text = "Thank you! Your order has been processed. To see your order, click the cart icon in the top right corner.";
            lblMessage.Visible = true;

        }

        protected void btnClearOrder_Click(object sender, EventArgs e)
        {
            CartHolder.cart.Clear();
            BindCart();
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int productID = Convert.ToInt32(btn.CommandArgument);
            Product productToRemove = CartHolder.cart.FirstOrDefault(p => p.productID == productID);
            if (productToRemove != null)
            {
                CartHolder.cart.Remove(productToRemove);
            }
            BindCart();
        }
    }
}