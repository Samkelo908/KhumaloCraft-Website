using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ST10141464POE
{
    public class Order
    {
        public int orderID {  get; set; }
        public DateTime orderTime { get; set; }
        public double orderTotal { get; set; }
        public string orderDetails { get; set; }
        public int userID { get; set; }
        public string status { get; set; }

        public string productName { get; set; } 
        public string productImageUrl { get; set; }

        public double Price { get; set; }
    }
}
