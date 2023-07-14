using HinhLam_DataObject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Services.SubMenu
{
    public interface ISubMenuService
    {
        SubMenuInfoModel GetSubMenuById(string id);
        List<SubMenuInfoModel> GetAllSubMenu();
        void Remove(string id);
        void Create(CreateSubMenuModel model);
        void Update(UpdateSubMenuModel model);
        SubMenuInfoModel GetContentOfMenu(string id);
    }
}
