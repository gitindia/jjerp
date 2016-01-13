using DataModel;
using FMW.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FMW.UnitOfWork.Interfaces;
using FMW.Repository.Interfaces;

namespace FMW.UnitOfWork
{
    public class UnitOfWork<TEntity> : IUnitOfWork<TEntity> where TEntity : class
    {
        private JJERPEntities context = new JJERPEntities();
        private BaseReposiory<TEntity> _baseReposiory;

        //public BaseReposiory<TEntity> BaseReposiory
        //{
        //    get
        //    {
        //        if (this._baseReposiory == null)
        //            this._baseReposiory = new BaseReposiory<TEntity>(context);
        //        return _baseReposiory;
        //    }
        //}

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
