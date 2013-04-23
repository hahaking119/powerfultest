using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using B2BTI.Domain.Entity;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.BLL;

namespace B2BTI.WebUI.Models
{
    public class HomeViewModel
    {

        public List<Route> NewRouteList;
        public List<Route> HotRouteList;

        public HomeViewModel() 
        {
            //routeList = new List<Route>();
        }
        
    }
}