using System;
using System.Data.Entity;
using System.Linq;
using WebApplication2.Models;

namespace WebApplication2.DatabaseContext
{
    public class TypeAheadEntitiesContext : DbContext
    {
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
        
        public virtual DbSet<Models.Person> People { get; set; }

        public DbSet<Models.HelloWorld> HelloWorlds { get; set; }

        public void SeedIfEmpty()
        {
            if (People.Any()) return;
            People.Add(new Person {FirstName = "Peter", LastName = "Green"});
            People.Add(new Person {FirstName = "Nancy", LastName = "Negrete"});
            People.Add(new Person {FirstName = "Joshua", LastName = "Joyner"});
            People.Add(new Person {FirstName = "Erik", LastName = "Ekhoff"});
            People.Add(new Person {FirstName = "Leesa", LastName = "Lumsden"});
            People.Add(new Person {FirstName = "Christeen", LastName = "Cephus"});
            People.Add(new Person {FirstName = "Wynona", LastName = "Wozniak"});
            People.Add(new Person {FirstName = "Markus", LastName = "Maysonet"});
            People.Add(new Person {FirstName = "Brianna", LastName = "Bara"});
            People.Add(new Person {FirstName = "Towanda", LastName = "Truex"});
            People.Add(new Person {FirstName = "Isaac", LastName = "Inouye"});
            People.Add(new Person {FirstName = "Annette", LastName = "Abdulla"});
            People.Add(new Person {FirstName = "Sharla", LastName = "Sinegal"});
            People.Add(new Person {FirstName = "Grant", LastName = "Grear"});
            People.Add(new Person {FirstName = "Claire", LastName = "Cooperman"});
            People.Add(new Person {FirstName = " Dorinda", LastName = "Dow"});
            People.Add(new Person {FirstName = "Ferne", LastName = "Finlayson"});
            People.Add(new Person {FirstName = "Albina", LastName = "Alequin"});
            People.Add(new Person {FirstName = "Myrl", LastName = "Marcy"});
            People.Add(new Person {FirstName = "Leone", LastName = "Langevin"});
            People.Add(new Person {FirstName = "Eloise", LastName = "Edelson"});
            SaveChanges();
        }
    }
}
