using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class Consult
    {
        public string ConsultId { get; set; } = null!;
        public string CustomerName { get; set; } = null!;
        public string CustomerCompany { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string PhoneNumber { get; set; } = null!;
        public string? Contents { get; set; }
        public DateTime CreatedDate { get; set; }
        public string? Response { get; set; }
        public bool ResponseStatus { get; set; }
        public DateTime? ResponseDate { get; set; }
        public bool IsDelete { get; set; }
    }
}
