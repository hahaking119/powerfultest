using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.Web;
using DataAnnotationsExtensions;
using System.ComponentModel.DataAnnotations.Schema;

namespace B2BTI.Domain.Entity
{
    public class Bid
    {
        [Key]
        [ScaffoldColumn(false)]
        public int BidId { get; set; }
        
        public int Price { get; set; }
        public DateTime BidTime { get; set; }


        //naviagtion!
        public int UserId { get; set; }
        public int PlaceId { get; set; }

        public virtual UserDetail UserDetail { get; set; }
        public virtual Place Place { get; set; }

    }
}
