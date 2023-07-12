using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.SubMenu
{
    public interface ISubMenuRepository
    {
        HinhLam_DataObject.Model.SubMenu GetMenuById(string id);
        List<HinhLam_DataObject.Model.SubMenu> GetAllMenu();
        void Remove(HinhLam_DataObject.Model.SubMenu menu);
        void Create(HinhLam_DataObject.Model.SubMenu menu);
        void Update(HinhLam_DataObject.Model.SubMenu menu);
        HinhLam_DataObject.Model.SubMenu GetSubMenuWithContentOfMenu(string menu);
    }
}
