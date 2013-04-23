using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.Concrete;
using B2BTI.Domain.Entity;
using System.Data.Entity;
using B2BTI.Domain.BLL;
using B2BTI.WebUI.Models;

namespace B2BTI.WebUI.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        private IRouteRepository routeRepository;
        private IRouteBLL routeBll;

        public HomeController(){
            routeRepository = new RouteRepository();
            routeBll = new RouteBLL();
        }
        
        //home 主页
        //显示一个轮播的PlacList页面
        //有一个Hot-8
        //有一个New-8
        public ActionResult Index()
        {
            HomeViewModel model = new HomeViewModel();

            List<Route> newRouteList = routeBll
                .RouteListSortByPostTimeAsc(routeRepository.GetRouteList())
                .Take(8)
                .ToList();

            List<Route> hotRouteList = routeBll
                .RouteListSortByBidNumber(routeRepository.GetRouteList())
                .Take(8)
                .ToList();
            //model.routeList = routeList;
            model.HotRouteList = hotRouteList;
            model.NewRouteList = newRouteList;

            return View(model);
        }

        public ActionResult PlaceList(int id) 
        {
            var placeList = routeRepository.GetPlaceList(id);
            return View(placeList);
        }

        public ActionResult SceneryList(int id) {
            var sceneryList = routeRepository.GetSceneryList(id);
            return View(sceneryList);
        }

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
            routeRepository.Dispose();
        }

    }
}
