using HinhLam_DataObject.DataAccess;
using HinhLam_DataObject.Model;
using HinhLam_DataObject.ViewModels;
using Microsoft.EntityFrameworkCore;
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

        public HinhLam_DataObject.Model.Menu? GetAllContentOfMenu(string menuId)
        {
            // Assuming you have an instance of your database context called "dbContext"

            // Get the menu by its MenuId with included related entities
           return _context.Menu
                .Include(m => m.MenuSubMenu)
                    .ThenInclude(ms => ms.SubMenu)
                        .ThenInclude(sm => sm.SubMenuContent)
                            .ThenInclude(sc => sc.Content)
                .FirstOrDefault(m => m.MenuId == menuId );
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
