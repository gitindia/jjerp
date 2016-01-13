using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JJERP.UnitOfWork.Interfaces
{
    public interface IUnitOfWork<T> :IDisposable
    //public interface IUnitOfWork<T>
    {
        
        //BaseReposiory<TEntity> BaseReposiory;
        void Save();
        //void Dispose(bool disposing);
        //void Dispose();
    }
}