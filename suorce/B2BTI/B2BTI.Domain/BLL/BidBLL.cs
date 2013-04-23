using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.Concrete;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.BLL
{
    class BidBLL : IBidBLL
    {
        //sort
        public IQueryable<Bid> GetBidListSortByPrice(IQueryable<Bid> bl)
        {
            return bl.OrderBy(r => r.Place);
        }
        public IQueryable<Bid> GetBidListSortByBidTime(IQueryable<Bid> bl)
        {
            return bl.OrderBy(r => r.BidTime);
        }

        //Filter
        public IQueryable<Bid> GetBidListGreaterThanPrice(IQueryable<Bid> bl, int price)
        {
            return bl.Where(r => r.Price > price);
        }
        public IQueryable<Bid> GetBidListLessThanPrice(IQueryable<Bid> bl, int price)
        {
            return bl.Where(r => r.Price <= price);
        }
    }
}
