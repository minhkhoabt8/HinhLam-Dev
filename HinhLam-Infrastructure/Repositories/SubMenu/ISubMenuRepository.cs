using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.SubMenu
{
    public interface ISubMenuRepository
    {
        HinhLam_DataObject.Models.SubMenu GetMenuById(string id);
        List<HinhLam_DataObject.Models.SubMenu> GetAllMenu();
        void Remove(HinhLam_DataObject.Models.SubMenu menu);
        void Create(HinhLam_DataObject.Models.SubMenu menu);
        void Update(HinhLam_DataObject.Models.SubMenu menu);
        HinhLam_DataObject.Models.SubMenu GetSubMenuWithContentOfMenu(string menu);
    }
}
