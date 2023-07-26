using HinhLam_DataObject.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.Home
{
    public class HomeRepository : IHomeRepository
    {
        private readonly HinhLamDBContext _dbContext;

        public HomeRepository(HinhLamDBContext dbContext)
        {
            _dbContext = dbContext;
        }
    }
}
