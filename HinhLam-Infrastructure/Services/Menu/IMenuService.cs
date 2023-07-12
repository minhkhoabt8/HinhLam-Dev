using HinhLam_DataObject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Services.Menu
{
    public interface IMenuService
    {
        MenuInfoModel GetMenuById(string id);
        List<MenuInfoModel> GetAllMenu();
        void Remove(string id);
        void Create(CreateMenuModel model);
        void Update(UpdateMenuModel model);
        MenuInfoModel GetContentOfMenu(string menuName);
        
    }
}
