using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataModel;
using System.Data.Entity;
using JJERP.UnitOfWork;


namespace JJERP.Controllers
{
    public class CompanyController : Controller
    {
        
        //
        // GET: /Company/
        public ActionResult Index()
        {
            return View();
        }


        #region Create...
        /// <summary>
        /// Get Action for Create
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            return View();
        }
       

        /// <summary>
        /// Post Action for Create
        /// </summary>
        /// <param name="userDetails"> </param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Create(JJERP.Models.Company company)
        {
            UnitOfWork<Company> unitOfWork = new UnitOfWork<Company>();
            
            try
            {
                var companyEntity = new Company();
                if (company != null)
                {
                    //companyEntity.ID = company.ID;
                    companyEntity.Name = company.Name;
                    companyEntity.CompanyTypeID = 1;
                    //user.Street = userDetails.LastName;
                    //user.HouseNumber = userDetails.Address;
                    //user.City = userDetails.PhoneNo;
                    //user.State = userDetails.EMail;
                    companyEntity.CountryID = 1;
                    //user.LandMark = userDetails.Designation;
                    //user.Description =;
                    //user.Telephone=;
                    //user.Email=;


                }
                unitOfWork.BaseReposiory.Insert(companyEntity);
                unitOfWork.Save();
                //private JJERPEntities context = new JJERPEntities();
                //internal JJERPEntities context;
               // internal DbSet<Company> dbSet;
               // unitOfWork.BaseReposiory.
               // return RedirectToAction("Index");
                return View();
            }
            catch
            {
                return View();
            }
        }
        #endregion Create...
    }
}