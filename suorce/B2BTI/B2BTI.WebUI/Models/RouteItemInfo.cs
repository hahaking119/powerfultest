using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using B2BTI.Domain.Entity;

namespace B2BTI.WebUI.Models
{
    public class RouteItemInfo
    {
        public string RouteName { get; set; }
        public string RouteDetail { get; set; }
        public string HostName { get; set; }

        //竞标人数
        public string BidNumber { get; set; }
        //有效日期
        public DateTime EffectiveDate { get; set; }
    }
}