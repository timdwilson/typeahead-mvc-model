using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication2;
using WebApplication2.Models;

// entity exceptions
using System.Data.Entity.Core;
using WebApplication2.DatabaseContext;

namespace WebApplication2.Controllers
{
    public class HelloWorldController : Controller
    {
        private readonly DatabaseContext.TypeAheadEntitiesContext _db = new DatabaseContext.TypeAheadEntitiesContext();

        private TypeAheadEntitiesContext db
        {
            get
            {
                _db.SeedIfEmpty();
                return _db;
            }
        }

        // GET: HelloWorld
        public ActionResult Index()
        {
            return View(db.HelloWorlds.ToList());
        }

        // GET: HelloWorld/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HelloWorld helloWorld = db.HelloWorlds.Find(id);
            if (helloWorld == null)
            {
                return HttpNotFound();
            }
            return View(helloWorld);
        }

        // GET: HelloWorld/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: HelloWorld/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PersonId, Name, Message")] HelloWorld helloWorld)
        {
            if (ModelState.IsValid)
            {
                db.HelloWorlds.Add(helloWorld);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(helloWorld);
        }
        public ActionResult GetPeople(string query)
        {
            return Json(_GetPeople(query), JsonRequestBehavior.AllowGet);
        }

        private List<Autocomplete> _GetPeople(string query)
        {
            List<Autocomplete> people = new List<Autocomplete>();
            try
            {
                var results = (from p in db.People
                               where (p.FirstName + " " + p.LastName).Contains(query)
                               orderby p.FirstName,p.LastName
                               select p).Take(10).ToList();
                foreach (var r in results)
                {
                    // create objects
                    Autocomplete person = new Autocomplete();

                    person.Name = string.Format("{0} {1}", r.FirstName, r.LastName);
                    person.Id = r.PersonId;

                    people.Add(person);
                }

            }
            catch (EntityCommandExecutionException eceex)
            {
                if (eceex.InnerException != null)
                {
                    throw eceex.InnerException;
                }
                throw;
            }
            catch
            {
                throw;
            }
            return people;
        }

        // GET: HelloWorld/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HelloWorld helloWorld = db.HelloWorlds.Find(id);
            if (helloWorld == null)
            {
                return HttpNotFound();
            }
            return View(helloWorld);
        }

        // POST: HelloWorld/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HelloWorldId,Message,Name,PersonId")] HelloWorld helloWorld)
        {
            if (ModelState.IsValid)
            {
                db.Entry(helloWorld).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(helloWorld);
        }

        // GET: HelloWorld/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HelloWorld helloWorld = db.HelloWorlds.Find(id);
            if (helloWorld == null)
            {
                return HttpNotFound();
            }
            return View(helloWorld);
        }

        // POST: HelloWorld/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HelloWorld helloWorld = db.HelloWorlds.Find(id);
            db.HelloWorlds.Remove(helloWorld);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
