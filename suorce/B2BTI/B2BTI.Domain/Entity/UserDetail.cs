using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace B2BTI.Domain.Entity
{
    public class UserDetail
    {
        [Key]
        [ScaffoldColumn(false)]
        public int UserDetailId { get; set; }
        
        public string CompanyName { get; set; }
        public string CompanyAddress { get; set; }
        public string Email { get; set; }
        public string CompanyTel { get; set; }
        public string Principal { get; set; }
        public string Phone { get; set; }
        public string Description { get; set; }

        //Navigation
        public int UserId { get; set; }
        public virtual User User { get; set; }
        public virtual ICollection<Route> Routes { get; set; }
        public virtual ICollection<Bid> Bids { get; set; }
    }
}
