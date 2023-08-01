using System;
using System.Collections.Generic;

namespace HinhLam_DataObject.Models
{
    public partial class File
    {
        public File()
        {
            FileContents = new HashSet<FileContent>();
            FileNews = new HashSet<FileNews>();
        }

        public string FileId { get; set; } = null!;
        public string? FileName { get; set; }
        public string? FileHref { get; set; }
        public DateTime? CreateDate { get; set; }
        public bool? IsPicture { get; set; }
        public bool? Status { get; set; }

        public virtual FileMenu? FileMenu { get; set; }
        public virtual FileSubMenu? FileSubMenu { get; set; }
        public virtual ICollection<FileContent> FileContents { get; set; }
        public virtual ICollection<FileNews> FileNews { get; set; }
    }
}
