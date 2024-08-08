using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ST10141464POE
{
    public class Product
    {
        public int productID {  get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public double price { get; set; }
        public string imageURL { get; set; }

        public string categoryName { get; set; }

        public string AvailabilityStatus { get; set; }
    }
    public class ProductOrder
    {
        public int OrderID { get; set; }
        public DateTime OrderTime { get; set; }
        public double OrderTotal { get; set; }
        public string Status { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public double Price { get; set; }
        public string ImageURL { get; set; }
    }
}