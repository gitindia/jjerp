using FMW.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FMW.UnitOfWork.Interfaces
{
    public interface IUnitOfWork<TEntity> : IDisposable
    {
        //BaseReposiory<TEntity> BaseReposiory;
        void Save();
        //void Dispose(bool disposing);
        //void Dispose();
    }
}
