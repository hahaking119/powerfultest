using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.Concrete
{
    public class B2BTIDbContextInitializer:DropCreateDatabaseAlways<B2BTIDbContext>
    {
        protected override void Seed(B2BTIDbContext context)
        {

            var u = new List<User>{
                new User{UserName="dzz",UserId=1,PassWord="123456",Date=new DateTime(2013,5,1),Rank=1,State="yeah"}
            };
            u.ForEach(i => context.User.Add(i));
            context.SaveChanges();

            var ud = new List<UserDetail>{
                new UserDetail{UserDetailId=1,UserId=1,CompanyName="dzz有限公司",Description="aasdfa"}
            };
            ud.ForEach(i => context.UserDetail.Add(i));
            context.SaveChanges();
            
            var s = new List<Route>{
                new Route{RouteName="RN0001",RouteDetail="PD0001",RouteId=1,StartTime=new DateTime(2013,6,1),LastDays=3,RouteType="组团",UserDetailId=1},
                new Route{RouteName="RN0002",RouteDetail="PD0002",RouteId=2,StartTime=new DateTime(2013,2,1),LastDays=6,RouteType="组团",UserDetailId=1},
                new Route{RouteName="RN0003",RouteDetail="PD0003",RouteId=3,StartTime=new DateTime(2013,5,1),LastDays=6,RouteType="散拼",UserDetailId=1},
            };
            s.ForEach(r => context.Route.Add(r));
            context.SaveChanges();

            var p = new List<Place>{
                new Place{PlaceId=1,RouteId=1,PlaceName="PN0001",PlaceDetail="PD0001",Days=6,Price=500,StartTime=new DateTime(2013,3,1)},
                new Place{PlaceId=2,RouteId=1,PlaceName="PN0002",PlaceDetail="PD0002",Days=6,Price=500,StartTime=new DateTime(2013,3,1)},
                new Place{PlaceId=3,RouteId=1,PlaceName="PN0003",PlaceDetail="PD0003",Days=6,Price=500,StartTime=new DateTime(2013,3,1)},
                new Place{PlaceId=4,RouteId=2,PlaceName="PN0004",PlaceDetail="PD0004",Days=6,Price=500,StartTime=new DateTime(2013,3,1)},
                new Place{PlaceId=5,RouteId=2,PlaceName="PN0005",PlaceDetail="PD0005",Days=6,Price=500,StartTime=new DateTime(2013,3,1)},
                new Place{PlaceId=6,RouteId=3,PlaceName="PN0006",PlaceDetail="PD0006",Days=6,Price=500,StartTime=new DateTime(2013,3,1)}
            };
            p.ForEach(i => context.Place.Add(i));
            context.SaveChanges();


            var k = new List<Scenery>{
                new Scenery{SceneryId=1,PlaceId=1,SceneryName="sn0001",SceneryDetail="snd0001"},
                new Scenery{SceneryId=2,PlaceId=1,SceneryName="sn0002",SceneryDetail="snd0002"},
                new Scenery{SceneryId=3,PlaceId=1,SceneryName="sn0003",SceneryDetail="snd0003"},
                new Scenery{SceneryId=4,PlaceId=2,SceneryName="sn0004",SceneryDetail="snd0004"},
                new Scenery{SceneryId=5,PlaceId=2,SceneryName="sn0005",SceneryDetail="snd0005"},
                new Scenery{SceneryId=6,PlaceId=3,SceneryName="sn0006",SceneryDetail="snd0006"},
                new Scenery{SceneryId=7,PlaceId=4,SceneryName="sn0007",SceneryDetail="snd0007"},
                new Scenery{SceneryId=8,PlaceId=4,SceneryName="sn0008",SceneryDetail="snd0008"},
                new Scenery{SceneryId=9,PlaceId=4,SceneryName="sn0009",SceneryDetail="snd0009"},
                new Scenery{SceneryId=10,PlaceId=5,SceneryName="sn0010",SceneryDetail="snd0010"},
                new Scenery{SceneryId=11,PlaceId=5,SceneryName="sn0011",SceneryDetail="snd0011"},
                new Scenery{SceneryId=12,PlaceId=5,SceneryName="sn0012",SceneryDetail="snd0012"}    
            };
            k.ForEach(i => context.Scenery.Add(i));
            context.SaveChanges();

            var j = new List<Journal>
            {
                new Journal{JournalId=1,PlaceId=1,JournalNumber="D1",JournalDetails="JND0001"},
                new Journal{JournalId=2,PlaceId=1,JournalNumber="D2",JournalDetails="JND0002"},
                new Journal{JournalId=3,PlaceId=1,JournalNumber="D3",JournalDetails="JND0003"},
                new Journal{JournalId=4,PlaceId=1,JournalNumber="D1",JournalDetails="JND0004"},
            };
            j.ForEach(i => context.Journal.Add(i));
            context.SaveChanges();
        }

    }

    public class B2BTIDbContextInitializer2 : DropCreateDatabaseIfModelChanges<B2BTIDbContext> 
    {
        protected override void Seed(B2BTIDbContext context)
        {
            var s = new List<Route>{
                new Route{RouteName="武汉到北京",RouteDetail="武汉到北京Details",RouteId=1,StartTime=new DateTime(2013,3,1),LastDays=3},
                new Route{RouteName="北京到三亚",RouteDetail="北京到三亚Details",RouteId=2,StartTime=new DateTime(2013,5,1),LastDays=6}
            };
            s.ForEach(r => context.Route.Add(r));
            context.SaveChanges();

            var p = new List<Place>{
                new Place{PlaceId=1,RouteId=1,PlaceName="武汉",PlaceDetail="武汉Details",Days=6,Price=500,StartTime=new DateTime(2013,3,1)},
                new Place{PlaceId=2,RouteId=1,PlaceName="武汉",PlaceDetail="武汉Details",Days=6,Price=500,StartTime=new DateTime(2013,3,1)},
                new Place{PlaceId=3,RouteId=1,PlaceName="武汉",PlaceDetail="武汉Details",Days=6,Price=500,StartTime=new DateTime(2013,3,1)}
            };
            p.ForEach(i => context.Place.Add(i));
            context.SaveChanges();

            var k = new List<Scenery>{
                new Scenery{SceneryId=1,PlaceId=1,SceneryName="sn0001",SceneryDetail="snd0001"},
                new Scenery{SceneryId=2,PlaceId=1,SceneryName="sn0002",SceneryDetail="snd0002"},
                new Scenery{SceneryId=3,PlaceId=2,SceneryName="sn0003",SceneryDetail="snd0003"},
                new Scenery{SceneryId=4,PlaceId=3,SceneryName="sn0004",SceneryDetail="snd0004"}          
            };
            k.ForEach(i => context.Scenery.Add(i));
            context.SaveChanges();      
        }
    }
}
