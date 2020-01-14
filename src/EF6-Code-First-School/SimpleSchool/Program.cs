﻿using ChinookSystem;
using ChinookSystem.DAL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleSchool
{
    class Program
    {
        static void Main(string[] args)
        {
            DisplayAlbums();
            //using(var context= new SchoolContext())
            //{
            //    int count = context.Courses.Count();
            //    Console.WriteLine($"There are {count} Course");
            //}
        }
        private static void DisplayAlbums()
        {
            using (var context = new ChinookContext())
            {
                //foreach(var record in context.Albums)
                //{
                //    Console.WriteLine($"{record.Title} by {record.Artist.Name}");
                //}
                foreach (var performer in context.Artists)
                {
                    Console.WriteLine($"Albums by { performer.Name}");
                    foreach(var record in performer.Albums)
                    {
                        Console.WriteLine($"\t- {record.Title}");
                    }
                }
            }
        }
    }
    public class SchoolContext : DbContext
    {
        public SchoolContext():base("name=SchoolDb")
        {

        }
        public DbSet<Course>Courses { get; set; }
    }
    [Table("Course")]
    public class Course
    {
        public int CourseID { get; set;}

        [Required]
        [StringLength(10)]
        public string CatalogNumber { get; set; }

        [Required]
        [StringLength(82)]
        public String Name { get; set; }
        public int Hours { get; set; }

    }

}
