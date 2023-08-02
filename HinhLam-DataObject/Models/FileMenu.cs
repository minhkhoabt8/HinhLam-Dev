using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class FileMenu
    {
        public string Id { get; set; } = null!;
        public string? FileId { get; set; }
        public string? MenuId { get; set; }

        public virtual File File { get; set; } = null!;
        public virtual Menu? Menu { get; set; }
    }
}
