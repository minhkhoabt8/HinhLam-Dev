using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class FileContent
    {
        public string Id { get; set; } = null!;
        public string? FileId { get; set; }
        public string? ContentId { get; set; }

        public virtual Content? Content { get; set; }
        public virtual File? File { get; set; }
    }
}
