using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class MenuSubMenu
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public string MenuId { get; set; } = null!;
        public string SubMenuId { get; set; } = null!;

        public virtual Menu Menu { get; set; } = null!;
        public virtual SubMenu SubMenu { get; set; } = null!;
    }
}
