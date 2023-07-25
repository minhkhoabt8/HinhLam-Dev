using HinhLam_DataObject.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModels.ConsultViewModel;

namespace HinhLam_Infrastructure.Services.Email.Repositories
{
    public interface IEmailServices
    {
        Task SendEmailAsync(EmailViewModel email);

    }
}
