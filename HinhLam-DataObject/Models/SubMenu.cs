using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class SubMenu
    {
        public SubMenu()
        {
            FileSubMenus = new HashSet<FileSubMenu>();
            MenuSubMenus = new HashSet<MenuSubMenu>();
            SubMenuContents = new HashSet<SubMenuContent>();
        }

        public string SubMenuId { get; set; } = null!;
        public string? Title { get; set; }
        public string? TitleEn { get; set; }
        public string? TitleCn { get; set; }
        public string Description { get; set; } = null!;
        public DateTime CreatedDate { get; set; }
        public bool Status { get; set; }
        public int SubMenuCount { get; set; }
        public string DescriptionCn { get; set; } = null!;
        public string DescriptionEn { get; set; } = null!;

        public virtual ICollection<FileSubMenu> FileSubMenus { get; set; }
        public virtual ICollection<MenuSubMenu> MenuSubMenus { get; set; }
        public virtual ICollection<SubMenuContent> SubMenuContents { get; set; }
    }
}
