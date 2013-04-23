using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace B2BTI.Domain.Entity
{
    public class User
    {
        [Key]
        [ScaffoldColumn(false)]
        public int UserId { get; set; }

        public string UserName { get; set; }
        public string PassWord { get; set; }
        public int Rank { get; set; }
        public DateTime Date { get; set; }
        public string State { get; set; }
        

        public virtual UserDetail UserDetail { get; set; }
    }
}
