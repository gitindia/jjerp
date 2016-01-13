using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FMW.Repository.Interfaces
{
    public interface IBaseReposiory<TEntity>
    {
        IEnumerable<TEntity> Get();
        TEntity GetByID(object id);
        void Delete(object id);
        void Delete(TEntity entityToDelete);
        void Update(TEntity entityToUpdate);
    }
}
