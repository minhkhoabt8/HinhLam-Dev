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
        [Key][MaxLength(50)]
        public string SubMenuID { get; set; } = Guid.NewGuid().ToString();
        [Required][Column(TypeName = "nvarchar")][MaxLength(100)]
        public string Title { get; set; }
        [Required][Column(TypeName = "nvarchar")][MaxLength(100)]
        public string TitleEN { get; set; }
        [Required][Column(TypeName = "nvarchar")][MaxLength(100)]
        public string TitleCN { get; set; }
        [Column(TypeName = "ntext")][MaxLength(100)]
        public string Description { get; set; }
        [Column(TypeName = "ntext")]
        [MaxLength(100)]
        public string DescriptionEN { get; set; }
        [Column(TypeName = "ntext")]
        [MaxLength(100)]
        public string DescriptionCN { get; set; }
        public int SubMenuCount { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public bool Status { get; set; } = true;

        public virtual ICollection<MenuSubMenu> MenuSubMenu { get; set; }
        public virtual ICollection<SubMenuContent> SubMenuContent { get; set; }

    }
}