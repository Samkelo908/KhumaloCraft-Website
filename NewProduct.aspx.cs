using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class NewProduct : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (UserHolder.loggedInUser != null && UserHolder.loggedInUser.staff)
                {
                    divadd.Visible = true;
                    lblWarning.Visible = false;
                }
                else
                {
                    divadd.Visible = false;
                    lblWarning.Visible = true;
                }
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (ValidateInput())
            {
                Product temp = new Product
                {
                    name = txtName.Text.Trim(),
                    description = txtDescription.Text.Trim(),
                    imageURL = txtURL.Text.Trim(),
                    price = Convert.ToDouble(txtPrice.Text.Trim())
                };
                da.AddNewProduct(temp);

                
                Response.Redirect("~/ProductList");
            }
            else
            {
                lblWarning.Text = "Please ensure all fields are filled correctly.";
                lblWarning.Visible = true;
            }
        }

        private bool ValidateInput()
        {
            double price;
            if (string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtDescription.Text) ||
                string.IsNullOrWhiteSpace(txtURL.Text) ||
                !double.TryParse(txtPrice.Text, out price))
            {
                return false;
            }

            return true;
        }
    }
}