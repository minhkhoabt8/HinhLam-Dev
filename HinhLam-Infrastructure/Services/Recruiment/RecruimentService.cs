using AutoMapper;
using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Repositories.Menu;
using HinhLam_Infrastructure.Repositories.Recruiment;
using HinhLam_Infrastructure.Services.Email.Repositories;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModel.RecruitmentViewModel;

namespace HinhLam_Infrastructure.Services.Recruiment
{
    public class RecruimentService : IRecruimentService
    {
        private readonly IRecuimentRepository _recruimentRepository;
        private readonly IMapper _mapper;
        private readonly IEmailServices _emailServices;
        private readonly IConfiguration _configuration;

        public RecruimentService(IRecuimentRepository recruimentRepository, IMapper mapper, IEmailServices emailServices, IConfiguration configuration)
        {
            _recruimentRepository = recruimentRepository;
            _mapper = mapper;
            _emailServices = emailServices;
            _configuration = configuration;
        }

        public async Task SendRecruitmentEmail(RecruitmentInfoModel model)
        {
            try
            {
                await _emailServices.SendEmailAsync(new EmailViewModel()
                {

                    To = _configuration["HinhLamMailSettings:HinhLamEmail"],
                    Subject = $"[Tuyển Dụng] - {model.ApplyPosition} - {model.CandidateName}",
                    Text =
                        $"<br>Thông tin ứng viên: " +
                        $"<br>Tên: {model.CandidateName} " +
                        $"<br>Email: {model.Email} " +
                        
                        $"<br>Số điện thoại: {model.PhoneNumber} " +
                        $"<br>Vị trí: {model.ApplyPosition} ",
                    Attachment = model.ApplyFile

                });
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
