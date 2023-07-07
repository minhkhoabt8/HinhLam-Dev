using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.Model
{
    public class MenuSubMenu
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public int Position { get; set; }
        public virtual string MenuId { get; set; }
        public virtual string SubMenuId { get; set; }
        public virtual SubMenu SubMenu { get; set; }
        public virtual Menu Menu { get; set; }
    }
}
