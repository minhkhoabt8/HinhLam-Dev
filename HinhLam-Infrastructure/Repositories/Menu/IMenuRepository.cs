using HinhLam_DataObject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HinhLam_DataObject.Models;


namespace HinhLam_Infrastructure.Repositories.Menu
{
    public interface IMenuRepository
    {
        HinhLam_DataObject.Models.Menu GetMenuById(string id);
        List<HinhLam_DataObject.Models.Menu> GetAllMenu();
        void Remove(HinhLam_DataObject.Models.Menu menu);
        void Create(HinhLam_DataObject.Models.Menu menu);
        void Update(HinhLam_DataObject.Models.Menu menu);
        HinhLam_DataObject.Models.Menu? GetAllContentOfMenu(string menuName);
    }
}
