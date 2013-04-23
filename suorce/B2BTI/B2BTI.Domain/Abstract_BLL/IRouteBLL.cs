using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.Concrete;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.Abstract
{
    public interface IRouteBLL
    {

        IQueryable<Route> RouteListSortById(IQueryable<Route> rl);
        IQueryable<Route> RouteListSortByPostTimeAsc(IQueryable<Route> rl);
        IQueryable<Route> RouteListSortByPostTimeDesc(IQueryable<Route> rl);
        IQueryable<Route> RouteListSortByStartTimeAsc(IQueryable<Route> rl);
        IQueryable<Route> RouteListSortByStartTimeDesc(IQueryable<Route> rl);
        IQueryable<Route> RouteListSortByBidNumber(IQueryable<Route> rl);



        IQueryable<Route> RouteListFilterByRouteType(IQueryable<Route> rl,string type);
        IQueryable<Route> RouteListFilterByStartTime(IQueryable<Route> rl, DateTime dt);
    }
}
