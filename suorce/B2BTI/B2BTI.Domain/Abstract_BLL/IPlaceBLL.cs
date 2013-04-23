using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.Abstract
{
    public interface IPlaceBLL
    {
        #region Sorting
        IQueryable<Place> PlaceListSortById(IQueryable<Place> pl);
        IQueryable<Place> PlaceListSortByStartTimeAsc(IQueryable<Place> pl);
        IQueryable<Place> PlaceListSortByStartTimeDesc(IQueryable<Place> pl);
        IQueryable<Place> PlaceListSortByStartTime(IQueryable<Place> pl,DateTime dt);
        IQueryable<Place> PlaceListSortByPriceAsc(IQueryable<Place> pl);
        IQueryable<Place> PlaceListSortByPriceDesc(IQueryable<Place> pl);
        #endregion 

        #region Filter
        IQueryable<Place> PlaceListGreaterThanPersonNumber(IQueryable<Place> pl,int persionNumber);
        IQueryable<Place> PlaceListLessThanPersonNumber(IQueryable<Place> pl, int persionNumber);
        IQueryable<Place> PlaceListGreaterThanPrice(IQueryable<Place> pl,int price);
        IQueryable<Place> PlaceListLowerThanPrice(IQueryable<Place> pl,int price);
        IQueryable<Place> PlaceListOfUserName(IQueryable<Place> pl,string name);
        #endregion
    }
}
