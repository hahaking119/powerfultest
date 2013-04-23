using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using B2BTI.Domain.Entity;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.Concrete;
using B2BTI.Domain.BLL;
using B2BTI.WebUI.Models;

namespace B2BTI.WebUI.Controllers
{
    public class RouteController : Controller
    {
        //
        // GET: /Route/
        [HttpPost]
        public ActionResult AddRouteSimpleData(Route route) 
        {
            
            if (ModelState.IsValid)
            {
                RouteInfo routeInfo = new RouteInfo();
                routeInfo.Route = route;
                Session["RouteInfo"] = routeInfo;
                return View();                
            }
            
            return View();
        }
    }
}
