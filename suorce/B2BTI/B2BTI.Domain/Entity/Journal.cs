using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace B2BTI.Domain.Entity
{
    public class Journal
    {
        [Key]
        [ScaffoldColumn(false)]
        public int JournalId { get; set; }
        
        public string JournalNumber { get; set; }
        public string JournalDetails { get; set; }

        public virtual Place Place { get; set; }
        public int PlaceId { get; set; }
    }
}
