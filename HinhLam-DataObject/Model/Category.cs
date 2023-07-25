using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.Model
{
    [Table("Category")]
    public class Category
    {
        [Key]
        [MaxLength(50)]
        public string CateId { get; set; } = Guid.NewGuid().ToString(); 
        [Required]
        [Column(TypeName = "nvarchar")]
        [MaxLength(100)]
        public string CateName { get; set; }
        [Required]
        [Column(TypeName = "nvarchar")]
        [MaxLength(100)]
        public string CateNameCN { get; set; }
        [Required]
        [Column(TypeName = "nvarchar")]
        [MaxLength(100)]
        public string CateNameEN { get; set; }
        public bool Status { get; set; } = true;
        public DateTime CreateDate { get; set; } = DateTime.Now;

        public virtual Menu Menu { get; set; }
    }
}
