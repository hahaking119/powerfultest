using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.Abstract
{
    public interface IBidRepository
    {
        //Query
        IQueryable<Bid> GetBidListByPlaceId(int placeId);
        IQueryable<Bid> GetBidListByUserId(int UserId);
        
        //ADD
        void AddBid(Bid bid);

        //EDIT
        void UpdateBid(Bid bid);

        //Delete
        void DeleteBid(Bid bid);

        void SaveChanges();
        void Dispose();
    }
}
