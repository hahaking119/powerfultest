using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;
using System.Data.Entity;
using System.Data.EntityClient;
using System.Data.EntityModel;
using System.Data;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration.Conventions;



namespace B2BTI.Domain.Entity
{
    public class B2BTIDbContext:DbContext
    {
        public DbSet<Route> Route { get; set; }
        public DbSet<Place> Place { get; set; }
        public DbSet<Scenery> Scenery { get; set; }
        public DbSet<Journal> Journal { get; set; }
        public DbSet<User> User { get; set; }
        public DbSet<UserDetail> UserDetail { get; set; }
        public DbSet<Bid> Bid { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //覆盖Convention
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            //Mapping!!! :D
            modelBuilder.Entity<User>().Property(u => u.UserId).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            modelBuilder.Entity<UserDetail>().Property(ud => ud.UserDetailId).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            modelBuilder.Entity<UserDetail>().HasMany(ud => ud.Routes).WithRequired(r => r.UserDetail);
            modelBuilder.Entity<UserDetail>().HasRequired(ud => ud.User).WithMany().HasForeignKey(u=>u.UserId);


            modelBuilder.Entity<Route>().Property(r => r.RouteId).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            modelBuilder.Entity<Route>().HasMany(r => r.Places).WithRequired(p => p.route);

                    
            modelBuilder.Entity<Place>().Property(p => p.PlaceId).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            modelBuilder.Entity<Place>().HasMany(p => p.Sceneries).WithRequired(s => s.Place);
            modelBuilder.Entity<Place>().HasMany(p => p.Journals).WithRequired(j => j.Place);
            modelBuilder.Entity<Place>().HasMany(p => p.Bids).WithRequired(b => b.Place);

            modelBuilder.Entity<Scenery>().Property(s => s.SceneryId).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            modelBuilder.Entity<Journal>().Property(j => j.JournalId).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            modelBuilder.Entity<Bid>().Property(b => b.BidId).HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);
            
        }
        
    }
}
