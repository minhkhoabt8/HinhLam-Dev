using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HinhLam_DataObject.ViewModels
{
    public class ConsultViewModel
    {
        public class ConsultInfoModel
        {
            public string ConsultId { set; get; } 
            public string CustomerName { get; set; }
            public string CustomerCompany { get; set; }
            [Required]
            public string Email { get; set; }
            [Required]
            public string PhoneNumber { get; set; }
            [Required]
            public string Contents { get; set; }
            public DateTime CreatedDate { get; set; }
            public bool Status { get; set; }
        }

        public class ConsultWriteModel
        {
            public string CustomerName { get; set; }
            public string CustomerCompany { get; set; }
            [Required]
            public string Email { get; set; }
            [Required]
            public string PhoneNumber { get; set; }
            [Required]
            public string Contents { get; set; }
        }
       
    }
}
