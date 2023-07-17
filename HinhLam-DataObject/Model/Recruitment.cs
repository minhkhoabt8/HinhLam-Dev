using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.Model
{
    [Table("Recruitment")]
    public class Recruitment
    {
        [Column(TypeName = "nvarchar")]
        public string RecruitmentId { set; get; } = Guid.NewGuid().ToString();
        [Column(TypeName = "nvarchar")]
        public string FullName { set; get; }
        [Column(TypeName = "nvarchar")]
        [Required]
        public string Email { set; get; }
        [Column(TypeName = "nvarchar")]
        [Required]
        public string PhoneNumber { set; get; }
        [Required]
        public IFormFile File { get; set; }

    }
}
