using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.Concrete;
using B2BTI.Domain.Entity;
using System.Data.Entity;
using B2BTI.WebUI.Models;


namespace B2BTI.WebUI.Controllers
{
    public class RouteCenterController : Controller
    {
        //
        // GET: /RouteCenter/
        private IRouteRepository irr;

        public RouteCenterController() 
        {
            irr = new B2BTI.Domain.Concrete.RouteRepository();
        }


        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult AddRoute() 
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult AddRoute(Route route) {
            if (ModelState.IsValid)
            {
                //irr.AddRoute(route);
                //irr.SaveChanges();

                //RouteInfo routeInfo = new RouteInfo();
                //routeInfo.Route = route;
                //Session.Add("RouteInfo", routeInfo);
                RouteInfo routeInfo = GetRouteInfo();
                UpdateRouteInfo(routeInfo,route);
                return RedirectToAction("AddPlace", "RouteCenter");
            }
            return View();
        }

        [HttpGet]
        public ActionResult AddPlace() 
        {
            //Route route = Session["Route"] as Route;
            //irr.AddRoute(route);
            //irr.SaveChanges();
            //ViewData.Add("RouteInfo",Session["RouteInfo"]);
            return View();
        }

        [HttpPost]
        public ActionResult AddPlace(Place place) 
        {
            if (ModelState.IsValid)
            {
         
                //RouteInfo routeInfo = Session["RouteInfo"] as RouteInfo;
                RouteInfo routeInfo = GetRouteInfo();

                place.RouteId = routeInfo.Route.RouteId;

                //routeInfo.PlaceList.Add(place);
                routeInfo.CurrentPlace = place;
                //Session["RouteInfo"] = routeInfo;
                UpdateRouteInfo(routeInfo,null, place);
                
                return RedirectToAction("AddScenery","RouteCenter");

            }
           return View();
        }

        [HttpGet]
        public ActionResult AddScenery() 
        {
            
            return View();
        }

        [HttpPost]
        public ActionResult AddScenery(Scenery scenery) 
        {
            if (ModelState.IsValid)
            {
                //RouteInfo routeInfo = Session["RouteInfo"] as RouteInfo;
                RouteInfo routeInfo = GetRouteInfo();
                Place place = routeInfo.CurrentPlace;
                scenery.PlaceId = place.PlaceId;

                //routeInfo.SceneryList.Add(scenery);
                //Session["RouteInfo"] = routeInfo;
                UpdateRouteInfo(routeInfo,null,null, scenery);
                SaveToDb(routeInfo);
                return RedirectToAction("index", "home");                         
            }

            return View();
        }

        private void SaveToDb(RouteInfo routeInfo) 
        {
            irr.AddRoute(routeInfo.Route);
            List<Place> placeList = routeInfo.PlaceList;
            if (placeList!=null && placeList.Count>0)
            {
                foreach (Place item in placeList)
                {
                    irr.AddPlace(item);
                }
            }
            List<Scenery> sceneryList = routeInfo.SceneryList;
            if (sceneryList != null && placeList.Count>0)
            {
                foreach (Scenery item in sceneryList)
                {
                    irr.AddScenery(item);
                }
            }
            irr.SaveChanges();
        }

        private void UpdateRouteInfo(RouteInfo routeInfo,Route route=null,Place place=null,Scenery scenery=null) 
        {           
            //routeInfo.Route = route;
            if ((routeInfo.Route == null && route != null) || (routeInfo.Route!=null&&route!=null&routeInfo.Route!=route))
            {
                routeInfo.Route = route;
            }

            routeInfo.AddPlace(place);
            routeInfo.AddScenery(scenery);
            Session["RouteInfo"] = routeInfo;
        }

        private RouteInfo GetRouteInfo() 
        {
            if (Session["RouteInfo"] == null)
            {
                Session["RouteInfo"] = new RouteInfo();
            }
            RouteInfo routeInfo = Session["RouteInfo"] as RouteInfo;
            return routeInfo;
        }

    }
}
