using HinhLam_DataObject.Models;
using System;
using System.Collections.Generic;
using System.Text;
using File = HinhLam_DataObject.Models.File;

namespace HinhLam_DataObject.ViewModels
{
    public class MenuInfoModel
    {
        public string MenuId { get; set; }
        public string MenuName { get; set; }
        public string MenuNameEN { get; set; }
        public string MenuNameCN { get; set; }
        public DateTime CreatedDate { get; set; }
        public int MenuCount { get; set; }
        public string HrefLink { get; set; }
        public string HrefLinkEN { get; set; }
        public string HrefLinkCN { get; set; }
        public bool Status { get; set; }
        public List<SubMenu> SubMenus { get; set; }
        public List<Content> Contents { get; set; }
        public List<File> Files { get; set; }
    }

    public class CreateMenuModel
    {
        public string MenuName { get; set; }
        public string MenuNameEN { get; set; }
        public string MenuNameCN { get; set; }
        public int MenuCount { get; set; }
        public string HrefLink { get; set; }
    }

    public class UpdateMenuModel
    {
        public string MiD { get; set; }
        public string MenuName { get; set; }
        public string MenuNameEN { get; set; }
        public string MenuNameCN { get; set; }
        public int MenuCount { get; set; }
        public string HrefLink { get; set; }

    }



    public class AddSubMenuModel
    {
        public string MenuId { get; set; }
        public List<string> SubMenuIds { get; set; }
    }
}
