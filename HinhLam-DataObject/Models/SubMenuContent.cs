using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class SubMenuContent
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public string SubMenuId { get; set; } = null!;
        public string ContentId { get; set; } = null!;

        public virtual Content Content { get; set; } = null!;
        public virtual SubMenu SubMenu { get; set; } = null!;
    }
}
