using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.Web;


namespace B2BTI.Domain.Entity
{
    public class Place
    {
        [Key]
        [ScaffoldColumn(false)]
        public int PlaceId { get; set; }
   

        public int Days { get; set; }
        public decimal Price { get; set; }
        public DateTime StartTime { get; set; }
        public string PlaceName { get; set; } 
        public int PersonNumber { get; set; }
        public string PlaceDetail { get; set; }

        public int PlaceState { get; set; }

        [ScaffoldColumn(false)]
        public int RouteId { get; set; }
        public virtual Route route { get; set; }
        public virtual ICollection<Scenery> Sceneries { get; set; }
        public virtual ICollection<Journal> Journals { get; set; }
        public virtual ICollection<Bid> Bids { get; set; }
    }
}
