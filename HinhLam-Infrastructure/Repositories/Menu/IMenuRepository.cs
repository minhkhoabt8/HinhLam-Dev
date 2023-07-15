using HinhLam_DataObject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.Menu
{
    public interface IMenuRepository
    {
        HinhLam_DataObject.Model.Menu GetMenuById(string id);
        List<HinhLam_DataObject.Model.Menu> GetAllMenu();
        void Remove(HinhLam_DataObject.Model.Menu menu);
        void Create(HinhLam_DataObject.Model.Menu menu);
        void Update(HinhLam_DataObject.Model.Menu menu);
        HinhLam_DataObject.Model.Menu? GetAllContentOfMenu(string menuName);
    }
}
