using HinhLam_DataObject.DataAccess;
using HinhLam_DataObject.Models;
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
        private readonly HinhLamDBContext _context;

        public MenuRepository(HinhLamDBContext context)
        {
            _context = context;
        }

        public void Create(HinhLam_DataObject.Models.Menu menu)
        {
            _context.Menus.Add(menu);
        }

        public List<HinhLam_DataObject.Models.Menu> GetAllMenu()
        {
            return _context.Menus.OrderBy(m=>m.MenuCount).ToList();
        }

        public HinhLam_DataObject.Models.Menu? GetAllContentOfMenu(string menuName)
        {
            //Assuming you have an instance of your database context called "dbContext"

            // Get the menu by its MenuId with included related entities
            //return _context.Menu
            //     .Include(m => m.MenuSubMenu)
            //         .ThenInclude(ms => ms.SubMenu)
            //             .ThenInclude(sm => sm.SubMenuContent)
            //                 .ThenInclude(sc => sc.Content)
            //     .FirstOrDefault(m => m.HrefLink.Contains(menuName) && m.Status == true || m.HrefLinkCN.Contains(menuName) && m.Status == true || m.HrefLinkEN.Contains(menuName) && m.Status == true);
            return _context.Menus
                .Include(m => m.MenuSubMenus)
                    .ThenInclude(ms => ms.SubMenu)
                        .ThenInclude(sm => sm.SubMenuContents)
                            .ThenInclude(sc => sc.Content)
                .Where(m => (m.HrefLink.Contains(menuName) || m.HrefLinkCn.Contains(menuName) || m.HrefLinkEn.Contains(menuName)) && m.Status == true)
                .FirstOrDefault(m => m.MenuSubMenus.Any(ms => ms.SubMenu.Status == true && ms.SubMenu.SubMenuContents.Any(sc => sc.Content.Status == true)));
        }

        public HinhLam_DataObject.Models.Menu? GetMenuById(string id)
        {
            return _context.Menus.FirstOrDefault(m => m.MenuId == id && m.Status == true);
        }

        public void Remove(HinhLam_DataObject.Models.Menu menu)
        {
            _context.Menus.Remove(menu);
        }

        public void Update(HinhLam_DataObject.Models.Menu menu)
        {
            _context.Menus.Update(menu);
        }
    }
}
