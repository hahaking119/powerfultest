using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using B2BTI.Domain.Entity;


namespace B2BTI.WebUI.Models
{
    public class RouteInfo
    {
        public B2BTI.Domain.Entity.Route Route { get; set; }
        public B2BTI.Domain.Entity.Place CurrentPlace { get; set; }
        public List<B2BTI.Domain.Entity.Place> PlaceList { get; set; }
        public List<B2BTI.Domain.Entity.Scenery> SceneryList { get; set; }

        public RouteInfo() {
            Route = new Domain.Entity.Route();
            PlaceList = new List<Domain.Entity.Place>();
            SceneryList = new List<Domain.Entity.Scenery>();
            CurrentPlace = null;
        }

        public void AddPlace(B2BTI.Domain.Entity.Place place) 
        {
            if (place == null)
            {
                return;
            }
            this.PlaceList.Add(place);
        }
        public void AddScenery(B2BTI.Domain.Entity.Scenery scenery) 
        {
            if (scenery == null)
            {
                return;
            }
            this.SceneryList.Add(scenery);
        }
    }
}