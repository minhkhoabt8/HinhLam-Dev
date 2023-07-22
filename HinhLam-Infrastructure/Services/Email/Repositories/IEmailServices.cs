using HinhLam_DataObject.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Services.Email.Repositories
{
    public interface IEmailServices
    {
        void SendEmail(EmailViewModel email);
    }
}
