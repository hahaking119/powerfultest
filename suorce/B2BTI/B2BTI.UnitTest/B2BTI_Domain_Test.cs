using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;
using B2BTI.Domain.Concrete;
using B2BTI.Domain.Abstract;
using B2BTI.Domain.BLL;
using NUnit.Framework;



namespace B2BTI.UnitTest
{
    //这是一个测试类
    [NUnit.Framework.TestFixture]
    public class B2BTI_Domain_Test
    {
        private B2BTI.Domain.Concrete.RouteRepository irr = new Domain.Concrete.RouteRepository();
        //测试用方法
        //方法必须是没有参数的，public，void
        [NUnit.Framework.Test]
        public void RouteRepositoryTest_GetRouteList() 
        {
            
            B2BTI.Domain.Concrete.RouteRepository irr = new Domain.Concrete.RouteRepository();
            List<B2BTI.Domain.Entity.Route> routeList = irr.GetRouteList().ToList<B2BTI.Domain.Entity.Route>();
            int count = routeList.Count;
               
            Assert.AreEqual(2, count);
        
        }


        [NUnit.Framework.Test]
        public void RouteRepositoryTest_DeleteRoute() 
        {
            B2BTI.Domain.Concrete.RouteRepository irr = new Domain.Concrete.RouteRepository();
            B2BTI.Domain.Entity.Route route = irr.GetRouteById(1);
            irr.DeleteRoute(route);
            irr.SaveChanges();
            int routeNumber = irr.GetRouteList().Count<B2BTI.Domain.Entity.Route>();

            Assert.AreEqual(1, routeNumber);
        }

        [NUnit.Framework.Test]
        public void RouteRepositoryTest_DeletePlace()
        {
            B2BTI.Domain.Concrete.RouteRepository irr = new Domain.Concrete.RouteRepository();
            List<B2BTI.Domain.Entity.Place> places = irr.GetPlaceList(1).ToList();           
            B2BTI.Domain.Entity.Place place = places[0];
            irr.DeletePlace(place);
            irr.SaveChanges();
            int placeNumber = irr.GetPlaceList(1).Count<B2BTI.Domain.Entity.Place>();

            Assert.AreEqual(2, placeNumber);
        }

        [NUnit.Framework.Test]
        public void RouteRepositoryTest_DeleteScenery()
        {
            
            List<B2BTI.Domain.Entity.Place> places = irr.GetPlaceList(1).ToList();
            B2BTI.Domain.Entity.Place place = places[0];
            irr.DeleteScenery(place);
            irr.SaveChanges();
            int count = irr.GetSceneryList(place.PlaceId).ToList().Count;
            Assert.AreEqual(0, count);
            
        }

        
        [NUnit.Framework.Test]
        public void RouteRepositoryTest_UpdateScenery()
        {
            List<B2BTI.Domain.Entity.Scenery> sceneryList = irr.GetSceneryList(1).ToList();
            B2BTI.Domain.Entity.Scenery scenery = sceneryList[0];
            scenery.SceneryName = "SN001_AfterUpdate";
            irr.UpdateScenery(scenery);
            irr.SaveChanges();

            irr = new Domain.Concrete.RouteRepository();
            sceneryList = irr.GetSceneryList(1).ToList();
            scenery = sceneryList[0];

            Assert.AreEqual("SN001_AfterUpdate", scenery.SceneryName);          
          
        }


        [NUnit.Framework.Test]
        public void RouteRepositoryTest_AddJournal() 
        {
            B2BTI.Domain.Entity.Journal j = new Domain.Entity.Journal();
            j.JournalNumber = "D1";
            j.JournalDetails = "blablablablablablabla";
            j.PlaceId = 1;
            irr.AddJournal(j);
            irr.SaveChanges();

            List<B2BTI.Domain.Entity.Journal> jl = irr.GetJournalList(1).ToList();
            int i  = jl.Count;
            Assert.AreEqual(1, i);
        
        }

        [NUnit.Framework.Test]
        public void RouteRepositoryTest_DeleteJournal()
        {
            List<B2BTI.Domain.Entity.Journal> jl = irr.GetJournalList(1).ToList();
            B2BTI.Domain.Entity.Journal j = jl[0];
            irr.DeleteJournal(j);
            irr.SaveChanges();
            jl = irr.GetJournalList(1).ToList();
            int i = jl.Count;
            Assert.AreEqual(0, i);

        }

        [NUnit.Framework.Test]
        public void RouteRepositoryTest_DeletePlace2() 
        {
            B2BTI.Domain.Entity.Place p = irr.GetPlaceById(1);
            irr.DeletePlace(p);
            irr.SaveChanges();
            List<B2BTI.Domain.Entity.Place> pl = irr.GetPlaceList(1).ToList();
            int i = pl.Count;

            Assert.AreEqual(2,i);
        }

        [NUnit.Framework.Test]
        public void RouteRepositoryTest_DeleteRoute2() 
        {
            B2BTI.Domain.Entity.Route r = irr.GetRouteById(1);
            irr.DeleteRoute(r);
            irr.SaveChanges();

            List<B2BTI.Domain.Entity.Route> rl = irr.GetRouteList().ToList();
            int i = rl.Count;
            Assert.AreEqual(1,i);
        
        }

        [NUnit.Framework.Test]
        public void RouteRepositoryTest_DeleteJournal2() 
        {
            B2BTI.Domain.Entity.Place p = irr.GetPlaceById(1);
            irr.DeleteJournal(p);
            irr.SaveChanges();

            List<B2BTI.Domain.Entity.Journal> jl = irr.GetJournalList(1).ToList();

            Assert.AreEqual(0, jl.Count);

        }
        
        [NUnit.Framework.Test]
        public void RouteBllTest_RouteListSortById() 
        {
            IQueryable<Route> rl = irr.GetRouteList();
            RouteBLL rb = new RouteBLL();
            rl = rb.RouteListSortById(rl);
            List<Route> rl2 = rl.ToList();

            Assert.AreEqual(1, rl2[0].RouteId);
            Assert.AreEqual(2, rl2[1].RouteId);
            Assert.AreEqual(3, rl2[2].RouteId);
            
        }
    }
}
