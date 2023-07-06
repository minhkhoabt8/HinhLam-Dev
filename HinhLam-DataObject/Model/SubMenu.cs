using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace HinhLam_DataObject.Model
{
    [Table("SubMenu")]
    public class SubMenu
    {
        [Key]
        [MaxLength(50)]
        public string SubMenuID { get; set; } = Guid.NewGuid().ToString();
        [Required]
        [Column(TypeName = "nvarchar")]
        [MaxLength(100)]
        public string Title { get; set; }
        [Column(TypeName = "ntext")]
        public string Description { get; set; }
        [Column(TypeName = "nvarchar")]
        public string FilePath { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public bool Status { get; set; } = true;

        public virtual ICollection<MenuSubMenu> MenuSubMenu { get; set; }
        public virtual ICollection<SubMenuContent> SubMenuContent { get; set; }

    }
}