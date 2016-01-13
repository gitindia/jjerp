using DataModel;
using JJERP.Repository;
using JJERP.UnitOfWork.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace JJERP.UnitOfWork
{
    public class UnitOfWork<T> : IUnitOfWork<T> where T : class
    {
        private JJERPEntities context = new JJERPEntities();
        private BaseReposiory<T> _baseReposiory;

        public BaseReposiory<T> BaseReposiory
        {
            get
            {
                if (this._baseReposiory == null)
                    this._baseReposiory = new BaseReposiory<T>(context);
                return _baseReposiory;
            }
        }

        public void Save()
        {
            context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
