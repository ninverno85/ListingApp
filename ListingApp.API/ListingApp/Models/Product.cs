using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ListingApp.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public int CategoryId { get; set; }
        public string ProductName { get; set; }
        public string Condition { get; set; }
        public string ProductDescription { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }

        public virtual ICollection<User> Users { get; set; }
        public ICollection<Category> Categories { get; set; }

    }
}