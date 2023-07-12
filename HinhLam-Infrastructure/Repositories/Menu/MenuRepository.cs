using HinhLam_DataObject.DataAccess;
using HinhLam_DataObject.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.Menu
{
    public class MenuRepository : IMenuRepository
    {
        private readonly ApplicationDbContext _context;

        public MenuRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public void Create(HinhLam_DataObject.Model.Menu menu)
        {
            _context.Menu.Add(menu);
        }

        public List<HinhLam_DataObject.Model.Menu> GetAllMenu()
        {
            return _context.Menu.OrderBy(m=>m.MenuCount).ToList();
        }

        public HinhLam_DataObject.Model.Menu? GetMenuById(string id)
        {
            return _context.Menu.FirstOrDefault(m => m.MenuId == id);
        }

        public void Remove(HinhLam_DataObject.Model.Menu menu)
        {
            _context.Menu.Remove(menu);
        }

        public void Update(HinhLam_DataObject.Model.Menu menu)
        {
            _context.Menu.Update(menu);
        }
    }
}
