using AutoMapper;
using HinhLam_DataObject.ViewModels;
using HinhLam_Infrastructure.Repositories.Menu;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Services.SubMenu
{
    public class SubMenuService : ISubMenuService
    {
        private readonly IMenuRepository _menuRepository;
        private readonly IMapper _mapper;

        public SubMenuService(IMenuRepository menuRepository, IMapper mapper)
        {
            _menuRepository = menuRepository;
            _mapper = mapper;
        }

        public void Create(CreateSubMenuModel model)
        {
            throw new NotImplementedException();
        }

        public List<SubMenuInfoModel> GetAllSubMenu()
        {
            throw new NotImplementedException();
        }

        public SubMenuInfoModel GetSubMenuById(string id)
        {
            throw new NotImplementedException();
        }

        public void Remove(string id)
        {
            throw new NotImplementedException();
        }

        public void Update(UpdateSubMenuModel model)
        {
            throw new NotImplementedException();
        }
    }
}
