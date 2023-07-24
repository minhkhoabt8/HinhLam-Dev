using AutoMapper;
using HinhLam_DataObject.ViewModel;
using HinhLam_DataObject.ViewModels;
using HinhLam_Infrastructure.Repositories.Menu;
using HinhLam_Infrastructure.Services.Email.Repositories;
using HinhLam_Infrastructure.Services.Email.Services;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static HinhLam_DataObject.ViewModels.ConsultViewModel;

namespace HinhLam_Infrastructure.Services.Menu
{
    public class MenuService : IMenuService
    {
        private readonly IMenuRepository _menuRepository;
        private readonly IMapper _mapper;
        private readonly IEmailServices _emailServices;
        private readonly IConfiguration _configuration;

        public MenuService(IMenuRepository menuRepository, IMapper mapper, IEmailServices emailServices,IConfiguration configuration)
        {
            _menuRepository = menuRepository;
            _mapper = mapper;
            _emailServices = emailServices;
            _configuration = configuration;
        }

        public void Create(CreateMenuModel model)
        {
            throw new NotImplementedException();
        }

        public MenuInfoModel GetAllContentOfMenu(string menuName)
        {
            if(menuName != null)
            {
                var result = _menuRepository.GetAllContentOfMenu(menuName);
                return _mapper.Map<MenuInfoModel>(result);
            }
            return null;
        }

        public List<MenuInfoModel> GetAllMenu()
        {
            var menu = _menuRepository.GetAllMenu();
            return _mapper.Map<List<MenuInfoModel>>(menu);
        }

        public MenuInfoModel GetContentOfMenu(string menuName)
        {
            throw new NotImplementedException();
        }

        public MenuInfoModel GetMenuById(string id)
        {
            var menu = _menuRepository.GetMenuById(id);
            return _mapper.Map<MenuInfoModel>(menu);
        }

        public void Remove(string id)
        {
            throw new NotImplementedException();
        }

        public void Update(UpdateMenuModel model)
        {
            throw new NotImplementedException();
        }

        public void SendConsultEmail(ConsultWriteModel model)
        {
            try
            {
                _emailServices.SendEmail(new EmailViewModel()
                {

                    To = _configuration["CTDMailSettings:CTDEmail"],
                    Subject = $"New Quick Consult Service",
                    Text =
                        $"<br>Client Infomation: " +
                        $"<br>Name: {model.CustomerName} " +
                        $"<br>Name: {model.CustomerCompany} " +
                        $"<br>Email: {model.Email} " +
                        $"<br>Phone Number: {model.PhoneNumber} " +
                        $"<br>City: {model.Contents} "
                });
            }catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

    }
}
