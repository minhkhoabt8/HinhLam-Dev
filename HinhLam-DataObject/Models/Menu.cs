using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class Menu
    {
        public Menu()
        {
            MenuSubMenus = new HashSet<MenuSubMenu>();
        }

        public string MenuId { get; set; } = null!;
        public string MenuName { get; set; } = null!;
        public string MenuNameCn { get; set; } = null!;
        public string MenuNameEn { get; set; } = null!;
        public string? CateId { get; set; }
        public DateTime CreatedDate { get; set; }
        public bool Status { get; set; }
        public int MenuCount { get; set; }
        public string HrefLink { get; set; } = null!;
        public string HrefLinkCn { get; set; } = null!;
        public string HrefLinkEn { get; set; } = null!;

        public virtual Category? Cate { get; set; }
        public virtual ICollection<MenuSubMenu> MenuSubMenus { get; set; }
    }
}
