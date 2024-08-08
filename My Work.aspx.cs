using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class My_Work : System.Web.UI.Page
    {
        DataAccess da = new DataAccess();
        static List<Product> menu = new List<Product>();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                menu = da.GetProducts();
                ProductRepeater.DataSource = menu;
                ProductRepeater.DataBind();
            }
        }



        protected void btnAddToCart1_Command(object sender, CommandEventArgs e)
        {
            //int productID = Convert.ToInt32(e.CommandArgument);
            //foreach (Product product in menu)
            //{
            //    if (product.productID == productID)
            //    {
            //        cart.Add(product);
            //        break;
            //    }
            //}
        }

        protected void btnAddToCart1_Click(object sender, EventArgs e)
        {
            if (UserHolder.loggedInUser == null)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please login or signup before performing this action.');", true);
                return;
            }

            Button btn = (Button)sender;
            int productID = Convert.ToInt32(btn.CommandArgument);
            Debug.WriteLine(btn.CommandArgument);
            Debug.WriteLine("menu:  " + menu.Count);

            foreach (Product product in menu)
            {
                if (product.productID == productID)
                {
                    Debug.WriteLine("I made it here");
                    CartHolder.cart.Add(product);
                    break;
                }
            }
        }
    }
}