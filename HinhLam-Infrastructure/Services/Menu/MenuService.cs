using AutoMapper;
using HinhLam_DataObject.ViewModels;
using HinhLam_Infrastructure.Repositories.Menu;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Services.Menu
{
    public class MenuService : IMenuService
    {
        private readonly IMenuRepository _menuRepository;
        private readonly IMapper _mapper;

        public MenuService(IMenuRepository menuRepository, IMapper mapper)
        {
            _menuRepository = menuRepository;
            _mapper = mapper;
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
    }
}
