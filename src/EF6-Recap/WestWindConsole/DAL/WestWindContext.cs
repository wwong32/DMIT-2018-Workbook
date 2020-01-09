﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WestWindConsole.Entities;

namespace WestWindConsole.DAL
{
    public class WestWindContext : DbContext
    {
        // By default, Entity Framework(EF) will automatically re-create the database
        //if it doesn't find one where the connection string is pointing
        public WestWindContext() : base("name=WWdb")
        {
            // TODO: Demonstrate null database initializer
            // we set the database initializer inside the constructor of our Dbcontext class.
            // Setting it to null will prevent Entity Framework from re-creating the database 
            //if it can't find it (which is what we wawnt most of the time).

            // An alternative place to "turn off" or disable database initialization is in the web.config or app.config file.
            Database.SetInitializer<WestWindContext>(null);
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<OrderDetail> OrderDetails { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<EmployeeTerritory> EmployeeTerritories { get; set; }
        public DbSet<Shipper> Shippers { get; set; }
        public DbSet<Shipment> Shipments { get; set; }

        // TODO: Practice - Add entities and DbSet<> properties for the remaining tables
    }
}
