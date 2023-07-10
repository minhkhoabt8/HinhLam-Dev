using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.Model
{

    [Table("Menu")]
    public class Menu
    {
        [Key][MaxLength(50)]
        public string MenuId { get; set; } = Guid.NewGuid().ToString();
        [Required][Column(TypeName = "nvarchar")][MaxLength(100)]
        public string MenuName { get; set; }
        [Required][Column(TypeName = "nvarchar")][MaxLength(100)]
        public string MenuNameCN { get; set; }
        [Required][Column(TypeName = "nvarchar")][MaxLength(100)]
        public string MenuNameEN { get; set; }
        public int MenuCount { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public bool Status { get; set; } = true;
        public virtual ICollection<MenuSubMenu> MenuSubMenu { get; set; }
    }
}
