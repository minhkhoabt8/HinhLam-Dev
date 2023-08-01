using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class FileSubMenu
    {
        public string Id { get; set; } = null!;
        public string? FileId { get; set; }
        public string? SubMenuId { get; set; }

        public virtual File IdNavigation { get; set; } = null!;
        public virtual SubMenu? SubMenu { get; set; }
    }
}
