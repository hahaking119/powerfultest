using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.Concrete;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.BLL
{
    public class RouteBLL:IRouteBLL
    {

        public IQueryable<Route> RouteListSortById(IQueryable<Route> rl)
        {
            return rl.OrderBy(r => r.RouteId);
        }

        public IQueryable<Route> RouteListSortByStartTimeAsc(IQueryable<Route> rl)
        {
            return rl.OrderBy(r => r.StartTime);
        }

        public IQueryable<Route> RouteListSortByStartTimeDesc(IQueryable<Route> rl)
        {
            return rl.OrderByDescending(r => r.StartTime);
        }

        public IQueryable<Route> RouteListFilterByRouteType(IQueryable<Route> rl, string type)
        {
            return rl.Where(r => r.RouteType == type);
        }

        
        public IQueryable<Route> RouteListFilterByStartTime(IQueryable<Route> rl, DateTime dt)
        {
            return rl.Where(r => r.StartTime > dt);               
        }


        public IQueryable<Route> RouteListSortByPostTimeAsc(IQueryable<Route> rl)
        {
            return rl.OrderBy(r => r.PostTime);
            
        }

        public IQueryable<Route> RouteListSortByPostTimeDesc(IQueryable<Route> rl)
        {
            return rl.OrderByDescending(r => r.PostTime);
        }
        
        public IQueryable<Route> RouteListSortByBidNumber(IQueryable<Route> rl) 
        {
            return rl.OrderBy(r => r.BidNumber);
        }
    }
}
