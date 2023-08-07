using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Services.Home
{
    public interface IHomeService
    {
        Task<bool> SendHotContactEmail(string email);
    }
}
