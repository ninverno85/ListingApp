using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ListingApp.Models
{
    public class Message
    {
        public int MessageId { get; set; }
        public int UserId { get; set; }
        public int ToUserId { get; set; }
        public string Subject { get; set; }
        public string MessageText { get; set; }
        public DateTime DateCreated { get; set; }
        public int ProductId { get; set; }
        public bool IsRead { get; set; }

        //public virtual User User { get; set; }

    }
}