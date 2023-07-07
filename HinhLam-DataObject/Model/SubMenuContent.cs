using System;
using System.Collections.Generic;
using System.Text;

namespace HinhLam_DataObject.Model
{
    public class SubMenuContent
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public int Position { get; set; }
        public virtual string SubMenuId { get; set; }
        public virtual string ContentId { get; set; }
        public virtual SubMenu SubMenu { get; set; }
        public virtual Content Content { get; set; }
    }
}
