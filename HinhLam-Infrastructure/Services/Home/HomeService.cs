using AutoMapper;
using HinhLam_DataObject.ViewModel;
using HinhLam_Infrastructure.Repositories.Recruiment;
using HinhLam_Infrastructure.Services.Email.Repositories;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModel.RecruitmentViewModel;

namespace HinhLam_Infrastructure.Services.Home
{
    public class HomeService : IHomeService
    {
        private readonly IRecuimentRepository _recruimentRepository;
        private readonly IMapper _mapper;
        private readonly IEmailServices _emailServices;
        private readonly IConfiguration _configuration;

        public HomeService(IRecuimentRepository recruimentRepository, IMapper mapper, IEmailServices emailServices, IConfiguration configuration)
        {
            _recruimentRepository = recruimentRepository;
            _mapper = mapper;
            _emailServices = emailServices;
            _configuration = configuration;
        }

        public async Task SendRecruitmentEmail(string email)
        {
            try
            {

                await _emailServices.SendEmailAsync(new EmailViewModel()
                {

                    To = _configuration["HinhLamMailSettings:HinhLamEmail"],
                    Subject = $"Liên Hệ Nhanh",
                    Text =
                        $"<h3 style=\"color: #2856a3;\">Liên Hệ Nhanh: </h3>" +
                        $"</br>" +
                        $"<h2>Email: {email} </h2>"
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
