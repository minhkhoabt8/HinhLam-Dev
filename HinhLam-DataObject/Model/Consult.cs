using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.Model
{
    [Table("Consult")]
    public class Consult
    {
        [Column(TypeName = "nvarchar")]
        public string ConsultId { set; get; } = Guid.NewGuid().ToString();
        [Column(TypeName = "nvarchar")]
        public string CustomerName { get; set; }
        [Column(TypeName = "nvarchar")]
        public string CustomerCompany { get; set; }
        [Required]
        [Column(TypeName = "nvarchar")]
        public  string Email { get; set; }
        [Required]
        [Column(TypeName = "nvarchar")]
        public string PhoneNumber { get; set; }
        [Required]
        [Column(TypeName = "ntext")]
        public string Contents { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public bool Status { get; set; } = true;
    }
}
