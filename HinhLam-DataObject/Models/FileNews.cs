using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class FileNews
    {
        public string Id { get; set; } = null!;
        public string? FileId { get; set; }
        public string? NewsId { get; set; }

        public virtual File? File { get; set; }
        public virtual News? News { get; set; }
    }
}
