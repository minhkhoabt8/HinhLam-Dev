using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class SubMenu
    {
        public SubMenu()
        {
            MenuSubMenus = new HashSet<MenuSubMenu>();
            SubMenuContents = new HashSet<SubMenuContent>();
        }

        public string SubMenuId { get; set; } = Guid.NewGuid().ToString();
        public string? Title { get; set; }
        public string? TitleEn { get; set; }
        public string? TitleCn { get; set; }
        public string Description { get; set; } = null!;
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public bool Status { get; set; } = true;
        public int SubMenuCount { get; set; }
        public string DescriptionCn { get; set; } = null!;
        public string DescriptionEn { get; set; } = null!;

        public virtual ICollection<MenuSubMenu> MenuSubMenus { get; set; }
        public virtual ICollection<SubMenuContent> SubMenuContents { get; set; }
    }
}
