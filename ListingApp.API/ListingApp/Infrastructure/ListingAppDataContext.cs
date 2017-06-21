using ListingApp.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
//using ListingApp.Migrations;

namespace ListingApp.Infrastructure
{
    public class ListingAppDataContext : DbContext
    {
        public ListingAppDataContext() : base("ListingAppDB")
        {
            //Database.SetInitializer(new MigrateDatabaseToLatestVersion<ListingAppDataContext, Configuration>());
        }



        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            modelBuilder.Entity<User>()
                .HasMany<Product>(p => p.Products)
                .WithMany(u => u.Users);

            modelBuilder.Entity<Favorite>()
                .HasRequired<User>(u => u.User)
                .WithMany(f => f.Favorites);

            modelBuilder.Entity<Product>()
                .HasMany(c => c.Categories)
                .WithMany(p => p.Products);

            //modelBuilder.Entity<Message>()
            //    .HasRequired<User>(u => u.User)
            //    .WithMany(m => m.Messages);

            base.OnModelCreating(modelBuilder);
        }

        public System.Data.Entity.DbSet<ListingApp.Models.Category> Categories { get; set; }

        public System.Data.Entity.DbSet<ListingApp.Models.Favorite> Favorites { get; set; }

        public System.Data.Entity.DbSet<ListingApp.Models.Product> Products { get; set; }

        public System.Data.Entity.DbSet<ListingApp.Models.User> Users { get; set; }

        public DbSet<Message> Messages { get; set; }

    }
}