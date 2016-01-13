using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace JJERP.Models
{
    public class Company
    {
        [Key]
        public int ID { get; set; }
        public string Name { get; set; }
        //public int CompanyTypeID { get; set; }
        //public string Street { get; set; }
        //public string HouseNumber { get; set; }
        //public string City { get; set; }
        //public string State { get; set; }
        //public int CountryID { get; set; }
        //public string LandMark { get; set; }
        //public string Description { get; set; }
        //public string Telephone { get; set; }
        //public string Email { get; set; }
        //public string Website { get; set; }
        //public int PaymentTermDays { get; set; }
        //public DateTime CreatedDate { get; set; }
        //public DateTime UpdatedDate { get; set; }
        //public int CreatedByUserId { get; set; }
        //public int UpdatedByUserId { get; set; }
    }
}