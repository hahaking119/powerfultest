using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace B2BTI.Domain.Entity
{
    public class Scenery
    {
        [Key]
        [ScaffoldColumn(false)]
        public int SceneryId { get; set; }
        [ScaffoldColumn(false)]
        public int PlaceId { get; set; }

        public string SceneryName { get; set; }
        public string SceneryDetail { get; set; }
        public string Requirement { get; set; }

        public Place Place { get; set; }
    }
}
