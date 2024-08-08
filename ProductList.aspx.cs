using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ST10141464POE
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductList();
            }
        }

        private void BindProductList()
        {
            
            DataAccess da = new DataAccess();
            List<Product> productList = da.GetProductList();
            ProductRepeater.DataSource = productList;
            ProductRepeater.DataBind();
        }
    }
}