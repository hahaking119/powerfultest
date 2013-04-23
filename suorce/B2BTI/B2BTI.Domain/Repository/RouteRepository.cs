using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;
using B2BTI.Domain.Abstract;
using System.Data.EntityClient;
using System.Data.Entity;

namespace B2BTI.Domain.Concrete
{
    public class RouteRepository:IRouteRepository,IDisposable
    {
        private B2BTIDbContext db;

        public RouteRepository() {
            db = new B2BTIDbContext();
            
        }

        public IQueryable<Route> GetRouteList()
        {
            var routeList = db.Route;
            return routeList;
        }

        public Route GetRouteById(int routeId) 
        {
            Route route = db.Route.Find(routeId);
            return route;
        
        }
        public Place GetPlaceById(int placeId) 
        {
            Place place = db.Place.Find(placeId);
            return place;
        }

        public IQueryable<Route> GetRouteList(int itemNumber) 
        {
            var routeList = db.Route.Take(itemNumber);
            return routeList;
        }


        public IQueryable<Place> GetPlaceList(int routeId) 
        {
            var placeList = db.Place.Where(p => p.RouteId == routeId);
            return placeList;
        
        }

        public IQueryable<Scenery> GetSceneryList(int placeId) 
        {
            var sceneryList = db.Scenery.Where(s => s.PlaceId == placeId);
            return sceneryList;
        
        }

        public IQueryable<Journal> GetJournalList(int placeId) 
        {
            var journalList = db.Journal.Where(j => j.PlaceId == placeId);
            return journalList;
        
        }

        public void AddRoute(Route route) 
        {
            db.Route.Add(route);
        }

        public void AddPlace(Place place)
        {
            db.Place.Add(place);
        }

        public void AddScenery(Scenery scenery) 
        {
            db.Scenery.Add(scenery);
        }

        public void AddJournal(Journal journal) 
        {
            db.Journal.Add(journal);    
        }

        public void DeleteRoute(Route route) 
        {

            DeletePlace(route);
            db.Route.Remove(route);
        }

        public void DeletePlace(Route route) 
        {
            db.Entry(route).Collection(r => r.Places).Load();
            List<Place> pl = route.Places.ToList();
            for (int i = 0; i < pl.Count; i++)
            {
                DeletePlace(pl[i]);
            }
        }
        public void DeletePlace(Place place)
        {
            DeleteScenery(place);
            db.Place.Remove(place);
        }

        public void DeleteScenery(Scenery scenery) 
        {
            db.Scenery.Remove(scenery);
        }

        //untest
        public void DeleteScenery(Place place) 
        {
            db.Entry(place).Collection(p => p.Sceneries).Load();
            db.Entry(place).Collection(p => p.Journals).Load();
            List<Scenery> sl = place.Sceneries.ToList();
            List<Journal> jl = place.Journals.ToList();
            for (int i = 0; i < sl.Count; i++)
            {
                db.Scenery.Remove(sl[i]);
            }

            for (int i = 0; i < jl.Count; i++)
            {
                db.Journal.Remove(jl[i]);
            }
        }
        public void DeleteJournal(Place place) 
        {
            db.Entry(place).Collection(p => p.Journals).Load();
            List<Journal> jl = place.Journals.ToList();
            for (int i = 0; i < jl.Count; i++)
            {
                db.Journal.Remove(jl[i]);
            }
        }

        public void DeleteJournal(Journal journal) 
        {
            db.Journal.Remove(journal);
        }

        public void UpdateRoute(Route route) 
        {
            db.Entry(route).State = System.Data.EntityState.Modified;
        }
        public void UpdatePlace(Place place) 
        {
            db.Entry(place).State = System.Data.EntityState.Modified;
        }
        public void UpdateScenery(Scenery scenery) 
        {
            db.Entry(scenery).State = System.Data.EntityState.Modified;     
        }

        public void UpdateJournal(Journal journal) 
        {
            db.Entry(journal).State = System.Data.EntityState.Modified;
        }

        public void SaveChanges()
        {
            db.SaveChanges();
        }

        public void Dispose(){
            db.Dispose();
        }
    }
}
