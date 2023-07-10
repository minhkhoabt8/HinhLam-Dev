﻿using HinhLam_DataObject.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_Infrastructure.Repositories.SubMenu
{
    public class SubMenuRepository : ISubMenuRepository
    {
        private readonly ApplicationDbContext _context;

        public SubMenuRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public void Create(HinhLam_DataObject.Model.SubMenu menu)
        {
            _context.SubMenu.Add(menu);
        }

        public List<HinhLam_DataObject.Model.SubMenu> GetAllMenu()
        {
            return _context.SubMenu.ToList();
        }

        public HinhLam_DataObject.Model.SubMenu? GetMenuById(string id)
        {
            return _context.SubMenu.FirstOrDefault( s => s.SubMenuID == id);
        }

        public void Remove(HinhLam_DataObject.Model.SubMenu menu)
        {
           _context.SubMenu.Remove(menu);
        }

        public void Update(HinhLam_DataObject.Model.SubMenu menu)
        {
            _context.SubMenu.Update(menu);
        }
    }
}
