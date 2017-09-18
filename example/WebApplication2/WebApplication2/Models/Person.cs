using System;
using System.Web.Razor.Tokenizer;

namespace WebApplication2.Models
{
    public class Person
    {
        public Person()
        {
            ModifiedDate = DateTime.Now;
        }
        public int PersonId { get; set; }
        public string PersonType { get; set; }
        public bool NameStyle { get; set; }
        public string Title { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Suffix { get; set; }
        public int EmailPromotion { get; set; }
        public string AdditionalContactInfo { get; set; }
        public string Demographics { get; set; }
        public System.Guid Rowguid { get; set; }
        public System.DateTime ModifiedDate { get; set; }
    }
}
