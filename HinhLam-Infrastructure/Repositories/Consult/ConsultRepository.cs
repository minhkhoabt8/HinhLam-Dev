using HinhLam_DataObject.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.Consult
{
    public class ConsultRepository : HinhLamDBContext, IConsultRepository
    {
        private readonly HinhLamDBContext _dbContext;

        public ConsultRepository(HinhLamDBContext dbContext)
        {
            _dbContext = dbContext;
        }
        
    }
}
