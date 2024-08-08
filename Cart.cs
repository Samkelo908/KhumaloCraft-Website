using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ST10141464POE
{
    public static class CartHolder
    {
        public static List<Product> cart = new List<Product>();

    }
    public static class UserHolder
    {
        public static User loggedInUser { get; set; }
    }

}