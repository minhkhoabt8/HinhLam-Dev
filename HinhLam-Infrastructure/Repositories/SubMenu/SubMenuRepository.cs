using HinhLam_DataObject.DataAccess;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.SubMenu
{
    public class SubMenuRepository : ISubMenuRepository
    {
        private readonly HinhLamDBContext _context;

        public SubMenuRepository(HinhLamDBContext context)
        {
            _context = context;
        }

        public void Create(HinhLam_DataObject.Models.SubMenu menu)
        {
            _context.SubMenus.Add(menu);
        }

        public List<HinhLam_DataObject.Models.SubMenu> GetAllMenu()
        {
            return _context.SubMenus.ToList();
        }

        

        public HinhLam_DataObject.Models.SubMenu? GetMenuById(string id)
        {
            return _context.SubMenus.FirstOrDefault( s => s.SubMenuId == id && s.Status == true);
        }

        public HinhLam_DataObject.Models.SubMenu? GetSubMenuWithContentOfMenu(string menu)
        {
            return _context.SubMenus.Include(c => c.SubMenuContents.Select(c => c.Content)).FirstOrDefault(s => s.Status == true);
        }

        public void Remove(HinhLam_DataObject.Models.SubMenu menu)
        {
           _context.SubMenus.Remove(menu);
        }

        public void Update(HinhLam_DataObject.Models.SubMenu menu)
        {
            _context.SubMenus.Update(menu);
        }
    }
}
