using HinhLam_DataObject.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.Recruiment
{
    public class RecruimentRepository : IRecuimentRepository
    {
        private readonly HinhLamDBContext _context;

        public RecruimentRepository(HinhLamDBContext context)
        {
            _context = context;
        }


    }
}
