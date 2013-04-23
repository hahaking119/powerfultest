using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.Abstract
{
    public interface IBidBLL
    {
        //sort
        IQueryable<Bid> GetBidListSortByPrice(IQueryable<Bid> bl);
        IQueryable<Bid> GetBidListSortByBidTime(IQueryable<Bid> bl);

        //Filter
        IQueryable<Bid> GetBidListGreaterThanPrice(IQueryable<Bid> bl,int price);
        IQueryable<Bid> GetBidListLessThanPrice(IQueryable<Bid> bl, int price);
    }
}
