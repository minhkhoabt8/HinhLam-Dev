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

        public HinhLam_DataObject.Model.Menu? GetAllContentOfMenu(string menuName)
        {
            // Assuming you have an instance of your database context called "dbContext"

            // Get the menu by its MenuId with included related entities
            //return _context.Menu
            //     .Include(m => m.MenuSubMenu)
            //         .ThenInclude(ms => ms.SubMenu)
            //             .ThenInclude(sm => sm.SubMenuContent)
            //                 .ThenInclude(sc => sc.Content)
            //     .FirstOrDefault(m => m.HrefLink.Contains(menuName) && m.Status == true || m.HrefLinkCN.Contains(menuName) && m.Status == true || m.HrefLinkEN.Contains(menuName) && m.Status == true);
            return _context.Menu
                .Include(m => m.MenuSubMenu)
                    .ThenInclude(ms => ms.SubMenu)
                        .ThenInclude(sm => sm.SubMenuContent)
                            .ThenInclude(sc => sc.Content)
                .Where(m => (m.HrefLink.Contains(menuName) || m.HrefLinkCN.Contains(menuName) || m.HrefLinkEN.Contains(menuName)) && m.Status == true)
                .FirstOrDefault(m => m.MenuSubMenu.Any(ms => ms.SubMenu.Status == true && ms.SubMenu.SubMenuContent.Any(sc => sc.Content.Status == true)));
        }

        public HinhLam_DataObject.Model.Menu? GetMenuById(string id)
        {
            return _context.Menu.FirstOrDefault(m => m.MenuId == id && m.Status == true);
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
