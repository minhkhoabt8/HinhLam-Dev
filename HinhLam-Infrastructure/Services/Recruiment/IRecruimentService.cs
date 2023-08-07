using HinhLam_DataObject.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModel.RecruitmentViewModel;

namespace HinhLam_Infrastructure.Services.Recruiment
{
    public interface IRecruimentService
    {
        Task<bool> SendRecruitmentEmail(RecruitmentInfoModel model);
    }
}
