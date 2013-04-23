using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;
using System.Data.Entity;
namespace B2BTI.Domain.Abstract
{
    public interface IRouteRepository
    {
       
        #region 查询Repository
        IQueryable<Route> GetRouteList();
        //IQueryable<Route> GetRouteList(int userId);
        IQueryable<Route> GetRouteList(int itemNumber);
        IQueryable<Place> GetPlaceList(int routeId);
        IQueryable<Scenery> GetSceneryList(int placeId);
        IQueryable<Journal> GetJournalList(int placeId);
        Route GetRouteById(int routeId);
        Place GetPlaceById(int placeId);
        //Scenery GetSceneryById(int SceneryId);
        #endregion

        #region 增加Repository
        void AddRoute(Route route);
        void AddPlace(Place place);
        void AddScenery(Scenery scenery);
        void AddJournal(Journal journal);
        #endregion


        #region 删除Repository
        void DeleteRoute(Route route);
        void DeletePlace(Place place);
        void DeletePlace(Route route);
        void DeleteScenery(Scenery scenery);
        void DeleteScenery(Place place);
        void DeleteJournal(Place place);
        void DeleteJournal(Journal journal);
        #endregion

        #region 更新Repository
        void UpdateRoute(Route route);
        void UpdatePlace(Place place);
        void UpdateScenery(Scenery scenery);
        void UpdateJournal(Journal journal); 
        #endregion

        void SaveChanges();
        void Dispose();
    }
}
