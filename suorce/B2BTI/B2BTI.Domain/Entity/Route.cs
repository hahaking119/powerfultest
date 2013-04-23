using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.Web;


namespace B2BTI.Domain.Entity
{
    public class Route
    {
        [Key]
        [ScaffoldColumn(false)]
        public int RouteId { get; set; }

        public string RouteName { get; set; }
        public string RouteDetail { get; set; }
        public int LastDays { get; set; }
        public string RouteType { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime PostTime { get; set; }
        public DateTime EffiectTime { get; set; }
        public int BidNumber { get; set; }

        public int RouteState { get; set; }

        public virtual ICollection<Place> Places{ get; set; }
        public int UserDetailId { get; set; }
        public virtual UserDetail UserDetail { get; set; }
        
    }
}
